import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final List<GlobalKey<FormState>> formKeys = List.generate(
    5,
    (_) => GlobalKey<FormState>(),
  );
}
