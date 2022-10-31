import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/widgets/product_card.dart';
import 'package:shoe_shop_app/pages/widgets/product_tile.dart';
import 'package:shoe_shop_app/theme.dart';

class HomePage extends StatelessWidget {
  Widget header() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Nico Robin",
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  "@nicoro_",
                  style: secondaryTextStyle.copyWith(
                      color: subTextColor, fontSize: 14),
                )
              ],
            ),
          ),
          Container(
            height: 54,
            width: 54,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/image_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
                border: Border.all(
                  color: primaryColor,
                ),
              ),
              child: Text(
                "All Shoes",
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(
                  color: subTextColor,
                  width: 1,
                ),
              ),
              child: Text(
                "Running",
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13,
                  color: subTextColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(
                  color: subTextColor,
                  width: 1,
                ),
              ),
              child: Text(
                "Training",
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13,
                  color: subTextColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(
                  color: subTextColor,
                  width: 1,
                ),
              ),
              child: Text(
                "Basketball",
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13,
                  color: subTextColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                border: Border.all(
                  color: subTextColor,
                  width: 1,
                ),
              ),
              child: Text(
                "Hiking",
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 13,
                  color: subTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newproductTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Text(
        "Product Category",
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget popularProduct() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget newArrivalTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Text(
        "New Arrivals",
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget newArrival() {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        header(),
        categories(),
        newproductTitle(),
        popularProduct(),
        newArrivalTitle(),
        newArrival(),
      ],
    );
  }
}
