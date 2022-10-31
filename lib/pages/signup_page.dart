import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "Please Register here",
              style: secondaryTextStyle.copyWith(
                color: subTextColor,
                letterSpacing: 0.5,
              ),
            )
          ],
        ),
      );
    }

    Widget fullnameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                letterSpacing: 1,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 50,
              margin: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: bgColor2,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_name.png",
                    width: 18,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: secondaryTextStyle.copyWith(
                        color: primaryTextColor,
                        letterSpacing: 0.6,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Name here',
                        hintStyle: secondaryTextStyle.copyWith(
                          color: subTextColor,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                letterSpacing: 1,
                fontSize: 16,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              margin: const EdgeInsets.only(top: 12),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: bgColor2,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_username.png",
                    width: 18,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: secondaryTextStyle.copyWith(
                        color: primaryTextColor,
                        letterSpacing: 0.6,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "Input username here",
                        hintStyle: secondaryTextStyle.copyWith(
                          color: subTextColor,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: bgColor2,
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_email.png',
                      width: 18,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: secondaryTextStyle.copyWith(
                          color: primaryTextColor,
                          letterSpacing: 0.6,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: "Please input Email",
                          hintStyle: secondaryTextStyle.copyWith(
                            color: subTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: bgColor2,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icon_password.png",
                    width: 18,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: primaryTextStyle.copyWith(
                        color: primaryTextColor,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Password",
                        hintStyle: secondaryTextStyle.copyWith(
                          color: subTextColor,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget signinButton() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        height: 50,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/main-page');
          },
          child: Text(
            "Sign Up",
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
              letterSpacing: 0.6,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30,
          top: 70,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an Account? ",
              style: secondaryTextStyle.copyWith(
                color: subTextColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Sign in",
                style: secondaryTextStyle.copyWith(
                  color: primaryColor,
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    fullnameInput(),
                    usernameInput(),
                    emailInput(),
                    passwordInput(),
                    signinButton(),
                    footer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
