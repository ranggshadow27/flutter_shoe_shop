import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/widgets/chat_bubble.dart';
import 'package:shoe_shop_app/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        child: AppBar(
          backgroundColor: bgColor4,
          centerTitle: false,
          elevation: 0,
          title: Row(
            children: [
              Image.asset(
                "assets/images/image_shop_logo_online.png",
                width: 50,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shop Shoe",
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    "Online",
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(60),
      );
    }

    Widget productShow() {
      return Container(
        width: 225,
        height: 74,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor4,
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/image_shoes3.png',
                width: 54,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AUTUMN ZEBRA X89",
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "\$56.77",
                    style: priceTextStyle,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/button_close.png',
              width: 20,
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productShow(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: bgColor4,
                    ),
                    child: TextFormField(
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message here ...',
                        hintStyle: secondaryTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/button_send.png',
                  width: 50,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatBubble(
            text: "Woey min, ini barangnya ada ngga ya?",
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            text:
                "Hello gan, barang yang anda mau ada loh, lagi diskon kon kon lagi, yuk langsung digas",
            isSender: false,
            hasProduct: false,
          ),
          ChatBubble(
            text: "Uhuy diskonnya berapa gan",
            isSender: true,
            hasProduct: false,
          ),
          ChatBubble(
            text: "Silahkan dicek sendiri ya ajg, makasi",
            isSender: false,
            hasProduct: false,
          ),
        ],
      );
    }

    return Scaffold(
      appBar: header(),
      backgroundColor: bgColor3,
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
