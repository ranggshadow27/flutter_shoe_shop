import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class WishlistCard extends StatelessWidget {
  final String image;
  final String name;

  WishlistCard({
    this.image = '',
    this.name = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 14,
        left: 12,
        right: 20,
      ),
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              12,
            ),
            child: Image.asset(
              image,
              width: 80,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: primaryTextStyle),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "\$128,87",
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    letterSpacing: .8,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/images/button_wishlist_blue.png",
            width: 34,
          ),
        ],
      ),
    );
  }
}
