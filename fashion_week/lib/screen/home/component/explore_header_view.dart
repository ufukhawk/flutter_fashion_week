import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/component/widget/svg_view.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:fashion_week/util/localization/app_localization.dart';
import 'package:flutter/material.dart';

class ExploreHeaderView extends StatelessWidget {
  const ExploreHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: ApplicationLocalizations.of(context)!.translate("explore"),
          textSize: 30,
          textColor: kTextColor,
          fontWeight: FontWeight.bold,
        ),
        SvgView(
          svgName: "assets/icon/filter.svg",
          size: 15,
        )
      ],
    );
  }
}
