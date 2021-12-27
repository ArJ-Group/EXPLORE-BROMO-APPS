import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:xplorebts/providers/cart_provider.dart';
import 'package:xplorebts/theme.dart';
// import 'package:xplorebts/widgets/cart_card.dart';

class MyOrderPage extends StatelessWidget {
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
          Container(
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
                            // image: NetworkImage(
                            //   // cart.product.galleries[0].url,
                            // ),
                            ),
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
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // cartProvider.addQuantity(cart.id);
                          },
                          child: Image.asset(
                            'assets/button_add.png',
                            width: 16,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          // cart.quantity.toString(),
                          "1",
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            // cartProvider.reduceQuantity(cart.id);
                          },
                          child: Image.asset(
                            'assets/button_min.png',
                            width: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    // cartProvider.removeCart(cart.id);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icon_remove.png',
                        width: 10,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Remove',
                        style: alertTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle,
                  ),
                  Text(
                    // '\$${cartProvider.totalPrice()}',
                    "\$100",
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      // body: cartProvider.carts.length == 0 ? emptyCart() : content(),
      // bottomNavigationBar:
      //     cartProvider.carts.length == 0 ? SizedBox() : customBottomNav(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
