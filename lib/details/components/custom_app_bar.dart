import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:donoaid/constants.dart';

import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  CustomAppBar({required this.rating});

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    primary: kPrimaryColor,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                  )
                  // SvgPicture.asset(
                  //   "assets/icons/Back ICon.svg", // change to Icon check how to implement icons
                  //   height: 15,
                  // ),
                  ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.star)
                  // SvgPicture.asset(
                  //     "assets/icons/Star Icon.svg"), // change to Icon check how to implement icons
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
