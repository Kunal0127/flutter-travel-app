import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/pages/second_package_details_page.dart';
import 'package:travel_app/utils/category_lable.dart';
import 'package:travel_app/utils/custom_appbar.dart';
import 'package:travel_app/utils/custom_card.dart';
import 'package:travel_app/utils/custom_package_card.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Where do you\nwant to explore today?",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    focusColor: Colors.amber,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    hintText: "Search",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choose Category",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CategoryLable(
                      lableImagePath: "assets/images/image_1648.png",
                      lableImageText: "Beach",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CategoryLable(
                      lableImagePath: "assets/images/image_1647.png",
                      lableImageText: "Mountain",
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 220,
                  child: ListView(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    // primary: false,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/package1');
                        },
                        child: CustomCard(
                          bannnerImagePath: "assets/images/image_1649.png",
                          cardTitle: "Kuta Beach",
                          cardLocationName: "Bali, Indonesia",
                          cardRating: 4.2,
                          hasRating: true,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/package2');
                        },
                        child: CustomCard(
                          bannnerImagePath: "assets/images/image_1650.png",
                          cardTitle: "Baga Beach",
                          cardLocationName: "Bali, Indonesia",
                          cardRating: 4.8,
                          hasRating: true,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: () { Navigator.pushNamed(context, '/package3');},
                        child: CustomCard(
                          bannnerImagePath: "assets/images/image_1651.png",
                          cardTitle: "Kuta Beach",
                          cardLocationName: "Bali, Indonesia",
                          cardRating: 4.8,
                          hasRating: true,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Package",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/package1');
                          },
                          child: CustomPackageCard(
                            title: "Kuta Resort",
                            imagePath: "assets/images/image_1649.png",
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/package2');
                          },
                          child: CustomPackageCard(
                            title: "Baga Beach",
                            imagePath: "assets/images/image_1650.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
