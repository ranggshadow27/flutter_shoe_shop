import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/images/image_shoes2.png',
    'assets/images/image_shoes2.png',
    'assets/images/image_shoes2.png',
  ];

  List familiarShoes = [
    'assets/images/image_shoes.png',
    'assets/images/image_shoes3.png',
    'assets/images/image_shoes4.png',
    'assets/images/image_shoes2.png',
    'assets/images/image_shoes5.png',
    'assets/images/image_shoes6.png',
    'assets/images/image_shoes2.png',
    'assets/images/image_shoes7.png',
    'assets/images/image_shoes8.png',
  ];

  int currentIndex = 0;
  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - defaultMargin,
          child: AlertDialog(
            backgroundColor: bgColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/icon_success.png",
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Thank you!",
                    style: primaryTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Your item(s) successfuly added to your Cart",
                    style: secondaryTextStyle.copyWith(
                      color: subTextColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicator(int index) {
      return Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 2,
            ),
            width: currentIndex == index ? 16 : 4,
            height: 4,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? primaryColor
                  : const Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      );
    }

    Widget familiarShoesCard(
      String imgUrl,
    ) {
      return Container(
        width: 54,
        height: 54,
        margin: const EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imgUrl,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin / 2,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (img) => Image.asset(
                    img,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      int indexe = -1;

      return Container(
        margin: const EdgeInsets.only(
          top: 17,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: bgColor1,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  //NOTE : Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "COURT VISION 2.0",
                              style: primaryTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semibold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Hiking",
                              style: secondaryTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isWishlist = !isWishlist;
                          });

                          if (isWishlist == true) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 800),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10),
                                  ),
                                ),
                                backgroundColor: secondaryColor,
                                content: Text(
                                  "Added to Wishlist!",
                                  style: primaryTextStyle.copyWith(
                                      fontWeight: medium),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 800),
                                backgroundColor: alertColor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10),
                                  ),
                                ),
                                content: Text(
                                  "Removed from Wishlist",
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: medium,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }
                        },
                        icon: Image.asset(
                          isWishlist == true
                              ? "assets/images/button_wishlist_blue.png"
                              : "assets/images/button_wishlist.png",
                        ),
                        iconSize: 46,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bgColor2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price start from",
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "\$143.98",
                          style: priceTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Note: Description
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "MERN Stack adalah pengembangan website dari Front-End sampai Back-End dengan memakai satu bahasa pemrograman yaitu Javascript. MERN adalah singkatan beberapa teknologi pengembangan yang powerful: M untuk MongoDB (Database); E untuk Express (Framework); R untuk ReactJS (FE); dan N untuk NextJS (FE) dan NodeJS (core BE).",
                          style: secondaryTextStyle.copyWith(
                            color: subTextColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Note: Familiar Shoes
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Familiar Shoes",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes.map((elemen) {
                        indexe++;
                        return Container(
                            margin: EdgeInsets.only(
                              left: indexe == 0 ? 0 : 0,
                            ),
                            child: familiarShoesCard(elemen));
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            // Note: Button
            Container(
              margin: EdgeInsets.all(
                defaultMargin,
              ),
              width: double.infinity,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat-detail');
                    },
                    child: Container(
                      height: 56,
                      width: 54,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/button_chat.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: TextButton(
                        onPressed: () {
                          showSuccessDialog();
                        },
                        child: Text(
                          "Add to Cart",
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semibold),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
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

    return Scaffold(
      backgroundColor: const Color(0xFFECEDEF),
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
