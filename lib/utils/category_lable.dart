import 'package:flutter/material.dart';

class CategoryLable extends StatelessWidget {
  final String lableImagePath;
  final String lableImageText;

  const CategoryLable({
    Key? key,
    required this.lableImagePath,
    required this.lableImageText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 150,
        height: 60,
        // color: Colors.red,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black26,
              width: 1,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(lableImagePath),
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              lableImageText,
              style: TextStyle(
                fontFamily: 'Urbanist',
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
