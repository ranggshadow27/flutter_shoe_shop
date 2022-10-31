import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class CartCard extends StatefulWidget {
  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int initial = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/image_shoes3.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Autumn Zebra XKilo",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      "\$ 143,98",
                      style: priceTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 8,
                  top: 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          initial++;
                        });
                      },
                      icon: Image.asset(
                        "assets/images/button_add.png",
                      ),
                      padding: EdgeInsets.only(
                        left: defaultMargin,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      child: Text(
                        "$initial",
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (initial > 0) {
                            initial--;
                          } else {
                            initial = 0;
                          }
                        });
                      },
                      padding: EdgeInsets.only(
                        left: defaultMargin,
                      ),
                      icon: Image.asset(
                        "assets/images/button_min.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_remove.png",
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Remove",
                    style: primaryTextStyle.copyWith(
                        color: alertColor, fontSize: 16, fontWeight: semibold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
