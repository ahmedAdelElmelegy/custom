import 'package:customs/core/theme/colors.dart';
import 'package:customs/core/theme/style.dart';
import 'package:flutter/material.dart';

enum InputType { text, dropdown, checkbox }

class CustomInputField extends StatefulWidget {
  final InputType type;
  final String label;

  // 🧩 Common
  final String? Function(String?)? validator;

  // 🧩 Text Field
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool readOnly;
  final VoidCallback? onTap;

  // 🧩 Dropdown
  final List<String>? items;
  final String? selectedValue;
  final ValueChanged<String?>? onChanged;
  final bool searchable;
  final Future<void> Function()? onLoadMore;

  // 🧩 Checkbox
  final bool? boolValue;
  final ValueChanged<bool?>? onChangedBool;

  const CustomInputField({
    super.key,
    required this.type,
    required this.label,
    this.validator,
    this.controller,
    this.suffixIcon,
    this.items,
    this.selectedValue,
    this.onChanged,
    this.searchable = false,
    this.onLoadMore,
    this.boolValue,
    this.onChangedBool,
    this.readOnly = false,
    this.onTap,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  final ScrollController _scrollController = ScrollController();
  String _searchQuery = '';
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isDropdownOpen = false;
  // for search
  List<String> get _filteredItems {
    if (_searchQuery.isEmpty) return widget.items ?? [];
    return widget.items!
        .where(
          (item) => item.toLowerCase().contains(_searchQuery.toLowerCase()),
        )
        .toList();
  }

  @override
  void initState() {
    super.initState();
    if (widget.type == InputType.dropdown && widget.onLoadMore != null) {
      _scrollController.addListener(_handleScroll);
    }
  }

  void _handleScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      widget.onLoadMore?.call();
    }
  }

  void _toggleDropdown() {
    if (_isDropdownOpen) {
      _closeDropdown();
    } else {
      _openDropdown();
    }
  }

  void _openDropdown() {
    _overlayEntry = _createOverlay();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() => _isDropdownOpen = true);
  }

  void _closeDropdown() {
    _overlayEntry?.remove();
    setState(() => _isDropdownOpen = false);
  }

  OverlayEntry _createOverlay() {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height + 5),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 250),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  if (widget.searchable)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextField(
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                        onChanged: (value) =>
                            setState(() => _searchQuery = value),
                      ),
                    ),
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = _filteredItems[index];
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            widget.onChanged?.call(item);
                            _closeDropdown();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();

    if (_overlayEntry?.mounted ?? false) {
      _overlayEntry?.remove();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case InputType.text:
        return _buildTextField();

      case InputType.dropdown:
        return _buildDropdown();

      case InputType.checkbox:
        return _buildCheckbox();
    }
  }

  Widget _buildTextField() {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color(0xFFBDBDBD)), // normal gray
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: AppTextStyle.font14Meduim(context)),
        const SizedBox(height: 8),
        TextFormField(
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.label,
            hintStyle: AppTextStyle.font14Meduim(context),
            suffixIcon: widget.suffixIcon,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            enabledBorder: border,
            focusedBorder: border.copyWith(
              borderSide: const BorderSide(color: ColorManager.primary),
            ),
            errorBorder: border.copyWith(
              borderSide: const BorderSide(color: ColorManager.error),
            ),
            focusedErrorBorder: border.copyWith(
              borderSide: const BorderSide(
                color: ColorManager.error,
                width: 1.5,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown() {
    return CompositedTransformTarget(
      link: _layerLink,
      child: FormField<String>(
        validator: widget.validator, // ✅ use the same v alidator
        builder: (FormFieldState<String> fieldState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.label, style: AppTextStyle.font14Meduim(context)),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: _toggleDropdown,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 11,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: fieldState.hasError
                          ? ColorManager.error
                          : Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.selectedValue ?? widget.label,
                        style: TextStyle(
                          color: widget.selectedValue == null
                              ? Colors.grey
                              : Colors.black,
                        ),
                      ),
                      Icon(
                        _isDropdownOpen
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
              ),
              // ✅ Display validation error message
              if (fieldState.hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 4),
                  child: Text(
                    fieldState.errorText!,
                    style: const TextStyle(
                      color: ColorManager.error,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: widget.boolValue ?? false,
          onChanged: widget.onChangedBool,
        ),
        Flexible(
          child: Text(
            widget.label,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
