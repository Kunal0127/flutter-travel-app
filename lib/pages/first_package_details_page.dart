import 'package:flutter/material.dart';
import 'package:travel_app/utils/package_details.dart';

class FirstPackageDetailsPage extends StatelessWidget {
  const FirstPackageDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PackageDetails(
      imagePath: "assets/images/image_1649.png",
      title: "Kuta Beach",
      details:
          "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
      rating: 4.2,
      price: 15000,
    );
  }
}
