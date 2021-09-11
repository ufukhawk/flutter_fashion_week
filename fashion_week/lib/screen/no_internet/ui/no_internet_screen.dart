import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomText(
              text: "Check internet connection.",
              textSize: 20.0,
              maxLine: 2,
              textColor: kTitleTextColor,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
