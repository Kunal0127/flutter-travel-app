import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String bannnerImagePath;
  final String? cardTitle;
  final String? cardLocationName;
  final double? cardRating;
  final bool? hasRating;

  const CustomCard({
    Key? key,
    required this.bannnerImagePath,
    this.cardTitle,
    this.cardLocationName,
    this.cardRating,
    this.hasRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 220,
      width: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(bannnerImagePath),
        ),
        borderRadius: BorderRadius.circular(20),
        // color: Colors.black26,
      ),
      child: Stack(
        children: [
          Positioned(
            // width: 20,
            right: 10,
            top: 20,
            child: Container(
              height: 32,
              width: 32,
              child: Icon(
                Icons.favorite,
                size: 16,
                color: Colors.red,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 5,
            right: 5,
            bottom: 5,
            child: Container(
              // color: Colors.white24,
              margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cardTitle != null
                      ? Text(
                          cardTitle.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : SizedBox(),

///////////////////////////////////////////////////////////////////////////
                  cardLocationName != null
                      ? Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 16,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              cardLocationName!,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      : SizedBox(),
/////////////////////////////////////////////////////////////////////////

                  Row(
                    children: [
                      hasRating != null && hasRating == true
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    color: Colors.white, size: 12),
                              ],
                            )
                          : SizedBox(),
/////////////////////////////////////////////////////////////////////////////
                      SizedBox(
                        width: 5,
                      ),
//////////////////////////////////////////////////////////////////////////
                      cardRating != null
                          ? Text(
                              cardRating!.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
