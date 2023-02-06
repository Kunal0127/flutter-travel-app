import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[400],
              radius: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Hello, Kunal",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.41,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
