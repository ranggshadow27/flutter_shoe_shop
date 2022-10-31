import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat-detail');
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 18,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/image_shop_logo.png",
                  width: 54,
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nico Robin",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        "Hello all are you doin fine here? my name is nico robin",
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  "Now",
                  style: secondaryTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFF2b2939),
            ),
          ],
        ),
      ),
    );
  }
}
