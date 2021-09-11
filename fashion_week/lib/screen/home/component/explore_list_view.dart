import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/screen/home/provider/home_provider.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreListView extends StatefulWidget {
  @override
  _ExploreListViewState createState() => _ExploreListViewState();
}

class _ExploreListViewState extends State<ExploreListView> {
  final HomeProvider homeProvider = Get.find<HomeProvider>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Obx(
        () => ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            var exploreItem = homeProvider.exploreList[index];
            return GestureDetector(
              onTap: () {
                homeProvider.selectExploreItem(exploreItem);
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.only(right: 15, top: 10),
                width: DeviceUtils.size(context).width /
                    homeProvider.exploreList.length,
                child: CustomText(
                  text: exploreItem.title,
                  textSize: 13,
                  textColor:
                      exploreItem.isSelect ? kTitleTextColor : kTextColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            );
          },
          itemCount: homeProvider.exploreList.length,
        ),
      ),
    );
  }
}
