import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/sign_in_page.dart';
import 'pages/splash_page.dart';
import 'providers/auth_provider.dart';
import 'providers/product_provider.dart';
import 'pages/sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
        },
      ),
    );
  }
}
