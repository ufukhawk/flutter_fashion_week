import 'package:fashion_week/component/widget/blurry_container.dart';
import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';

class ModelInfoView extends StatefulWidget {
  final FashionModelItem fashionModelItem;

  ModelInfoView({Key? key, required this.fashionModelItem}) : super(key: key);

  @override
  _ModelInfoViewState createState() => _ModelInfoViewState();
}

class _ModelInfoViewState extends State<ModelInfoView> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 20,
      right: 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: BlurryContainer(
          height: 220,
          blur: 10,
          bgColor: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          width: DeviceUtils.size(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                text: widget.fashionModelItem.modelName!,
                textSize: 25,
                textColor: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                textSize: 13,
                maxLine: 4,
                textColor: kWhiteColor,
                fontWeight: FontWeight.normal,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: kRedColor,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomRight: const Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Follow",
                        textSize: 13,
                        maxLine: 4,
                        textColor: kWhiteColor,
                        fontWeight: FontWeight.normal,
                      ),
                      Icon(
                        Icons.add_circle,
                        color: kWhiteColor,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
