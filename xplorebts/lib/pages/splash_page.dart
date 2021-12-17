import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xplorebts/providers/product_provider.dart';
import 'package:xplorebts/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: state awal aplikasi dijalankan
    getInit();
    super.initState();
  }

  getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushNamed(context, '/sign-in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor6,
      body: Center(
        child: Container(
          width: 230,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
