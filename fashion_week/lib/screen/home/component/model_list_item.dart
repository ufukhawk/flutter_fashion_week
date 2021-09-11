import 'package:fashion_week/component/widget/custom_text.dart';
import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';

class ModelListItem extends StatefulWidget {
  final FashionModelItem fashionModelItem;

  ModelListItem({Key? key, required this.fashionModelItem}) : super(key: key);

  @override
  _ModelListItemState createState() => _ModelListItemState();
}

class _ModelListItemState extends State<ModelListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: DeviceUtils.size(context).width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                      color: kShadowColor,
                      blurRadius: 20,
                      offset: Offset(0, 5),
                      spreadRadius: 0)
                ]),
            child: Hero(
              tag: widget.fashionModelItem.id!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  widget.fashionModelItem.modelImage!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.fashionModelItem.modelName!,
                  textSize: 15,
                  textColor: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: widget.fashionModelItem.modelCity!,
                  textSize: 15,
                  textColor: kTextColor,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
