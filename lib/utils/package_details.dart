import 'package:flutter/material.dart';

class PackageDetails extends StatelessWidget {
  final String imagePath;
  final String title;
  final String details;
  final double rating;
  final int price;

  const PackageDetails(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.details,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_rounded),
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        color: Colors.white,
                        Icons.location_on_outlined,
                        size: 16,
                      ),
                      Text(
                        "Goa, India",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Urbanist",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Urbanist",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star_rate_rounded, color: Colors.yellow, size: 12),
                  Icon(Icons.star_rate_rounded, color: Colors.yellow, size: 12),
                  Icon(Icons.star_rate_rounded, color: Colors.yellow, size: 12),
                  Icon(Icons.star_rate_rounded, color: Colors.yellow, size: 12),
                  Icon(Icons.star_rate_rounded, color: Colors.white, size: 12),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Urbanist",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "₹${price.toString()}/person",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Urbanist",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
