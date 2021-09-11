import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/component/widget/svg_view.dart';
import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationView extends StatefulWidget {
  final FashionModelItem fashionModelItem;

  NavigationView({Key? key, required this.fashionModelItem}) : super(key: key);

  @override
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: DeviceUtils.size(context).height * .15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: kWhiteColor,
                    ),
                  ),
                  SvgView(
                    svgName: "assets/icon/menu_dots.svg",
                    size: 20,
                    color: kWhiteColor,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                controlButton("assets/icon/comment.svg",
                    widget.fashionModelItem.commentCount!),
                controlButton(
                    "assets/icon/fav.svg", widget.fashionModelItem.likeCount!),
                controlButton(
                    "assets/icon/time.svg", widget.fashionModelItem.timeCount!)
              ],
            ),
          ],
        ),
      ),
    );
  }

  controlButton(String svgName, String count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          SvgView(
            svgName: svgName,
            size: 20,
            color: kWhiteColor,
          ),
          const SizedBox(
            height: 5.0,
          ),
          CustomText(
            text: count,
            textColor: kWhiteColor,
            textSize: 10,
          ),
        ],
      ),
    );
  }
}
