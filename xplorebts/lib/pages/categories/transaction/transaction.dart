import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/cubit/transaction_cubit.dart';
import 'package:bwa_airplane/models/transaction_model.dart';
import 'package:xplorebts/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_RowDetailBooking.dart';
import 'package:bwa_airplane/ui/widgets/custom_button_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;
  const CheckoutPage({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerLocation() {
      return Container(
        margin: EdgeInsets.only(
            top: 50, left: defaultMargin, right: defaultMargin, bottom: 30),
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_checkout.png'))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget detailBooking() {
      //booking name
      String numberFormatPrice =
          NumberFormat.currency(locale: 'ID', symbol: 'IDR ', decimalDigits: 0)
              .format(transaction.price);

      String numberFormatGrandTotal =
          NumberFormat.currency(locale: 'ID', symbol: 'IDR ', decimalDigits: 0)
              .format(transaction.price * transaction.traveler);

      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(transaction.destination.imageUrl),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        transaction.destination.city,
                        style: greyTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        transaction.destination.rating.toString(),
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //Detail Booking
            Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                CustomRowDetailBooking(
                  title: 'Traveler',
                  value: '${transaction.traveler} person',
                  color: kBlackColor,
                  isFirst: true,
                ),
                CustomRowDetailBooking(
                  title: 'Seat',
                  value: '${transaction.seat}',
                  color: kBlackColor,
                ),
                CustomRowDetailBooking(
                  title: 'Insurance',
                  value: transaction.insurance == true ? 'YES' : 'NO',
                  color:
                      transaction.insurance == true ? kGreenColor : kRedColor,
                ),
                CustomRowDetailBooking(
                  title: 'Refundable',
                  value: transaction.refundable == true ? 'YES' : 'NO',
                  color:
                      transaction.refundable == true ? kGreenColor : kRedColor,
                ),
                CustomRowDetailBooking(
                  title: 'VAT',
                  value: '${(transaction.vat).toStringAsFixed(0)}%',
                  color: kBlackColor,
                ),
                CustomRowDetailBooking(
                  title: 'Price',
                  value: numberFormatPrice,
                  color: kBlackColor,
                ),
                CustomRowDetailBooking(
                  title: 'Grand Total',
                  value: numberFormatGrandTotal,
                  color: kPrimaryColor,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Details',
                    style: blackTextStyle.copyWith(
                        fontWeight: semibold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        height: 70,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image_card.png')),
                            boxShadow: [
                              BoxShadow(
                                  color: kPrimaryColor.withOpacity(0.5),
                                  blurRadius: 50,
                                  offset: Offset(0, 10))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icon_plane.png'))),
                            ),
                            Text(
                              'Pay',
                              style: whiteTextStyle.copyWith(
                                  fontWeight: medium, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              NumberFormat.currency(
                                locale: 'ID',
                                symbol: 'IDR ',
                                decimalDigits: 0,
                              ).format(state.user.balance),
                              style: blackTextStyle.copyWith(
                                  fontSize: 18, fontWeight: medium),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Current Balance',
                              style: greyTextStyle.copyWith(fontWeight: light),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    Widget buttonPayNow() {
      return BlocConsumer<TransactionCubit, TransactionState>(
        listener: (context, state) {
          if (state is TransactionSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/success', (route) => false);
          } else if (state is TransactionFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: kRedColor, content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is TransactionLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return CustomButtonItem(
                title: 'Pay Now',
                onPressed: () {
                  context
                      .read<TransactionCubit>()
                      .createTransaction(transaction);
                },
                margin: EdgeInsets.only(
                    right: defaultMargin, left: defaultMargin, bottom: 30));
          }
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          headerLocation(),
          detailBooking(),
          paymentDetail(),
          buttonPayNow(),
          tacButton()
        ],
      ),
    );
  }
}
