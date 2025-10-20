import 'package:customs/core/di/injection.dart';
import 'package:customs/core/helper/extention.dart';
import 'package:customs/feature/home/presentation/manager/cubit/home_cubit.dart';
import 'package:customs/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await dotenv.load(fileName: ".env");

  // قراءة

  init();
  // final user = SecureCookie.getSecureCookie('user_data');
  // if (user != null) {
  //   print('👤 Welcome ${user['name']}');
  //   print('🔑 Token: ${user['token']}');
  // }
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar'), Locale('en')],
      path:
          'assets/translation', // <-- change the path of the translation files
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
