import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:fashion_week/util/localization/app_localization.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text:
              ApplicationLocalizations.of(context)!.translate("week_in_paris"),
          textSize: 30,
          textColor: kTitleTextColor,
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          text: ApplicationLocalizations.of(context)!
              .translate("week_in_paris_desc"),
          textSize: 12,
          textColor: kTextColor,
          fontWeight: FontWeight.normal,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
