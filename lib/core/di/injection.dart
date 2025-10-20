import 'package:customs/core/network/api_services.dart';
import 'package:customs/feature/contact_us/presentation/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:customs/core/utils/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  final dio = DioFactory.getDio();

  getIt.registerLazySingleton<Dio>(() => dio);

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // cubit

  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt<ApiService>()),
  );
}
