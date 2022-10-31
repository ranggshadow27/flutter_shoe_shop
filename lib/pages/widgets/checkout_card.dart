import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: bgColor4,
      ),
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: const EdgeInsets.all(
        20,
      ),
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/image_shoes8.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Court Vision 2.0 Yoo Nico Robin",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "\$148,22",
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semibold,
                    letterSpacing: 0.8,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "2 items",
            style: secondaryTextStyle.copyWith(
              color: subTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
