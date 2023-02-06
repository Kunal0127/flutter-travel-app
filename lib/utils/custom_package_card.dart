import 'package:flutter/material.dart';

class CustomPackageCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const CustomPackageCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.maxFinite,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black12,
            width: 2,
          )),
      child: Card(
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: double.maxFinite,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imagePath),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "₹20,000",
                    style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_rate_rounded,
                          color: Colors.yellow, size: 12),
                      Icon(Icons.star_rate_rounded,
                          color: Colors.yellow, size: 12),
                      Icon(Icons.star_rate_rounded,
                          color: Colors.yellow, size: 12),
                      Icon(Icons.star_rate_rounded,
                          color: Colors.yellow, size: 12),
                      Icon(Icons.star_rate_rounded,
                          color: Colors.grey[300], size: 12),
                      Text(
                        "4.8",
                        style: TextStyle(
                          fontFamily: "Urbanist",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "A resort is a place used for vacation, relaxation or as...",
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.favorite_border_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
