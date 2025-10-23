// import 'package:customs/core/services/secure_cokkies.dart';
// import 'package:customs/core/widgets/custom_btn.dart';
// import 'package:customs/core/widgets/custom_input_widget.dart';
// import 'package:customs/feature/contact_us/presentation/cubit/login_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ContactUsScreen extends StatefulWidget {
//   const ContactUsScreen({super.key});

//   @override
//   State<ContactUsScreen> createState() => _ContactUsScreenState();
// }

// class _ContactUsScreenState extends State<ContactUsScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _phoneController = TextEditingController();
//   @override
//   void initState() {
//     final data = SecureCookie.getSecureCookie('user_data');
//     if (data != null) {
//       debugPrint('👤 Welcome ${data['user']['first_name']}');
//       debugPrint('🔑 Token: ${data['auth']['token']}');
//     }

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: ConstrainedBox(
//         constraints: BoxConstraints(maxWidth: 400),
//         child: BlocBuilder<LoginCubit, LoginState>(
//           builder: (context, state) {
//             return Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   SizedBox(height: 30),
//                   CustomInputField(
//                     type: InputType.text,
//                     label: 'Phone',
//                     controller: _phoneController,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Phone is required';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 30),
//                   CustomBtn(
//                     width: double.infinity,
//                     text: 'Submit',
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         context.read<LoginCubit>().login(_phoneController.text);
//                       }
//                     },
//                     color: Colors.blue,
//                   ),
//                   SizedBox(height: 30),
//                   if (state is LoginError)
//                     Text(state.message, style: TextStyle(color: Colors.red)),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Contact Us'));
  }
}
