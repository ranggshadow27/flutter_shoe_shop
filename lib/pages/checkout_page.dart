import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/widgets/checkout_card.dart';
import 'package:shoe_shop_app/theme.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        title: Text(
          "Checkout",
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 80,
      );
    }

    Widget content() {
      return ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Items",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),

          // LIST ITEMS

          // ADDRESS DETAIL
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: const EdgeInsets.all(
              20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: bgColor4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address Details",
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: semibold),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/icon_store_location.png",
                              width: 60,
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images/icon_line.png",
                          height: 40,
                        ),
                        Image.asset(
                          "assets/images/icon_your_address.png",
                          width: 60,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Store Location",
                          style: secondaryTextStyle.copyWith(
                            color: subTextColor,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Adidas Store",
                          style: primaryTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Your Address",
                          style: secondaryTextStyle.copyWith(
                            color: subTextColor,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Hobbiton Town",
                          style: primaryTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          // PAYMENT DETAILS
          Container(
            padding: const EdgeInsets.all(
              20,
            ),
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            decoration: BoxDecoration(
              color: bgColor4,
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Summary",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Product Quantity",
                      style: secondaryTextStyle.copyWith(
                        color: subTextColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "2 Items",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Product Price",
                      style: secondaryTextStyle.copyWith(
                        color: subTextColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$289,90",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Shipping",
                      style: secondaryTextStyle.copyWith(
                        color: subTextColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Free",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Row(
                  children: [
                    Text(
                      "Total",
                      style: priceTextStyle,
                    ),
                    const Spacer(),
                    Text(
                      "\$289,90",
                      style: priceTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),

          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 18,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
            ),
            child: Text(
              "Checkout Now",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
    );
  }
}
