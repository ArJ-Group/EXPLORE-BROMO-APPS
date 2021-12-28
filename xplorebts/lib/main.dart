// @dart=2.9
// php artisan serve --host 192.168.1.6 --port 80 ( RAJEN )
// php artisan serve --host 172.24.0.1 --port 80 ( RIO )
// php artisan serve --host 192.168.1.20 --port 80 ( ALIF )

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/cart_page.dart';
import 'pages/checkout_page.dart';
import 'pages/checkout_success_page.dart';
import 'pages/edit_profile_page.dart';
import 'pages/home/main_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/splash_page.dart';
import 'providers/auth_provider.dart';
import 'providers/cart_provider.dart';
import 'providers/page_provider.dart';
import 'providers/product_provider.dart';
import 'providers/transaction_provider.dart';
import 'providers/wishlist_provider.dart';

//new categories

import 'pages/categories/Camping/camping.dart';
import 'pages/categories/jeep/jeep.dart';
import 'pages/categories/Inn/inn.dart';
import 'pages/categories/Trip/trip.dart';
import 'pages/categories/order/order.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => WishlistProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => TransactionProvider()),
        ChangeNotifierProvider(create: (context) => PageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
          //new
          '/camping': (context) => CampingPage(),
          '/jeep': (context) => JeepPage(),
          '/inn': (context) => InnPage(),
          '/trip': (context) => TripPage(),
          '/orders': (context) => OrderPage(),
        },
      ),
    );
  }
}
