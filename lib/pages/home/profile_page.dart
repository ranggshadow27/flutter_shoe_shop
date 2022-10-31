import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bgColor1,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/image_profile.png",
                    width: 64,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nico Robin",
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "@nicoro_",
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/signin-page', (route) => false);
                  },
                  child: Image.asset(
                    "assets/images/button_exit.png",
                    width: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menu(String text) {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 10,
        ),
        child: Text(
          text,
          style: primaryTextStyle.copyWith(
            fontWeight: semibold,
            fontSize: 18,
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle,
            ),
            Icon(
              Icons.chevron_right,
              size: 24,
              color: primaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: bgColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              menu(
                "Account",
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/update-profile');
                },
                child: menuItem(
                  "Edit Profiles",
                ),
              ),
              menuItem(
                "Your Orders",
              ),
              menuItem(
                "Help",
              ),
              menu(
                "General",
              ),
              menuItem(
                "Privacy & Security",
              ),
              menuItem(
                "Terms of Use",
              ),
              menuItem(
                "Rate this App",
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
