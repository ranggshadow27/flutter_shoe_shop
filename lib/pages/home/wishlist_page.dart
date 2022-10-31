import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/widgets/wishlist_card.dart';
import 'package:shoe_shop_app/theme.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: bgColor1,
        elevation: 0,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          color: bgColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/image_wishlist.png",
                width: 74,
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                "You don't have any favorite shoes",
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Let's find something good for you!",
                style: secondaryTextStyle,
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Explore Store",
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: bgColor3,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              WishlistCard(
                name: "URION SPENCER X87",
                image: "assets/images/image_shoes6.png",
              ),
              WishlistCard(
                name: "COURT VISION VX",
                image: "assets/images/image_shoes2.png",
              ),
              WishlistCard(
                name: "ULTIMO CANYON",
                image: "assets/images/image_shoes4.png",
              ),
              WishlistCard(
                name: "SCHOOL PREDATHOR",
                image: "assets/images/image_shoes7.png",
              ),
              WishlistCard(
                name: "WESTLINE OSTRICH A8X",
                image: "assets/images/image_shoes8.png",
              ),
              WishlistCard(
                name: "AUTUMN ZEBRA XKILO",
                image: "assets/images/image_shoes3.png",
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
