import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/home/chat_page.dart';
import 'package:shoe_shop_app/pages/home/home_page.dart';
import 'package:shoe_shop_app/pages/home/profile_page.dart';
import 'package:shoe_shop_app/pages/home/wishlist_page.dart';
import 'package:shoe_shop_app/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart-page');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          "assets/images/icon_cart.png",
          width: 20,
        ),
      );
    }

    Widget bottomnavigationBar() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 14,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Image.asset(
                      'assets/images/icon_home.png',
                      width: 20,
                      color: currentIndex == 0
                          ? primaryColor
                          : const Color(0xFF808191),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1
                        ? primaryColor
                        : const Color(0xFF808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_wishlist.png',
                    width: 20,
                    color: currentIndex == 2
                        ? primaryColor
                        : const Color(0xFF808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/icon_profile.png',
                    width: 20,
                    color: currentIndex == 3
                        ? primaryColor
                        : const Color(0xFF808191),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WishlistPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomnavigationBar(),
      body: body(),
    );
  }
}
