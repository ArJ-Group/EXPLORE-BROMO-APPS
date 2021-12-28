import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:xplorebts/providers/cart_provider.dart';
import 'package:xplorebts/theme.dart';
// import 'package:xplorebts/widgets/cart_card.dart';

class OrderDetailHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // CartProvider cartProvider = Provider.of<CartProvider>(context);

    header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Your Order',
        ),
        elevation: 0,
      );
    }

    Widget emptyOrder() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Opss! You dont have\nany order',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s order something!',
              style: secondaryTextStyle,
            ),
            Container(
              width: 154,
              height: 44,
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        // children: cartProvider.carts
        //     .map(
        //       (cart) => CartCard(cart),
        //     )
        //     .toList(),
        children: [
          new GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/order-detail');
            },
            child: Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/logo.png'),
                            )
                            //             Image.asset(
                            //   'assets/icon_empty_cart.png',
                            //   width: 80,
                            // ),
                            // image: DecorationImage(
                            //     // image: NetworkImage(
                            //     //   // cart.product.galleries[0].url,
                            //     // ),
                            //     ),
                            ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // cart.product.name,
                              "Tent",
                              style: primaryTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              "\$500",
                              // '\$${cart.product.price}',
                              style: priceTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      // body: cartProvider.carts.length == 0 ? emptyOrder() : content(),
      // bottomNavigationBar:
      //     cartProvider.carts.length == 0 ? SizedBox() : customBottomNav(),
      body: content(),
    );
  }
}
