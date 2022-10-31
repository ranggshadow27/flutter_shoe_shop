// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/cart_page.dart';
import 'package:shoe_shop_app/pages/checkout_page.dart';
import 'package:shoe_shop_app/pages/detail_chat_page.dart';
import 'package:shoe_shop_app/pages/home/home_page.dart';
import 'package:shoe_shop_app/pages/home/main_page.dart';
import 'package:shoe_shop_app/pages/product_page.dart';
import 'package:shoe_shop_app/pages/sigin_page.dart';
import 'package:shoe_shop_app/pages/signup_page.dart';
import 'package:shoe_shop_app/pages/splash_page.dart';
import 'package:shoe_shop_app/pages/update_profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/signin-page': (context) => SignInPage(),
        '/signup-page': (context) => SignUpPage(),
        '/home-page': (context) => MainPage(),
        // '/chat-page': (context) => ChatPage(),
        // '/wishlist-page': (context) => WishlistPage(),
        // '/profile-page': (context) => ProfilePage(),
        '/chat-detail': (context) => DetailChatPage(),
        '/update-profile': (context) => UpdateProfile(),
        '/product-page': (context) => ProductPage(),
        '/cart-page': (context) => CartPage(),
        '/checkout-page': (context) => CheckoutPage(),
      },
    );
  }
}
