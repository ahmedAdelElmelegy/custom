import 'package:customs/core/di/injection.dart';
import 'package:customs/core/helper/extention.dart';
import 'package:customs/core/routing/auth_middle_ware.dart';
import 'package:customs/core/widgets/custom_btn.dart';
import 'package:customs/core/widgets/custom_input_widget.dart';
import 'package:customs/feature/home/presentation/manager/home/home_cubit.dart';
import 'package:customs/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setPathUrlStrategy();
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

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Router.neglect(context, () => context.go('/login'));
          },
          child: Text('Go to Home'),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login Screen'),
                SizedBox(height: 20),
                CustomInputField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  type: InputType.text,
                  label: 'Email',
                ),
                SizedBox(height: 20),
                CustomInputField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  type: InputType.text,
                  label: 'Password',
                ),
                SizedBox(height: 20),
                CustomBtn(
                  width: double.infinity,

                  text: 'Login',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      AuthService.isAuthenticated = true;
                      Router.neglect(context, () => context.go('/home'));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                AuthService.isAuthenticated = false;
                Router.neglect(context, () => context.go('/login'));
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
