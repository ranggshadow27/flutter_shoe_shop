import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product-page');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          color: const Color(0xFFECEDEF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Image.asset(
              "assets/images/image_shoes2.png",
              height: 150,
              width: 215,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hiking",
                    style: secondaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text("COURT VISION 2.0 VIOLENT COURT",
                      style: primaryTextStyle.copyWith(
                        fontWeight: semibold,
                        color: subTextColor,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis),
                  Text(
                    "\$ 58,77",
                    style: secondaryTextStyle.copyWith(
                      fontWeight: medium,
                      color: priceColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
