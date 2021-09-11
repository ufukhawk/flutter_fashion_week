import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';

class ModelImageView extends StatelessWidget {
  final FashionModelItem fashionModelItem;
  ModelImageView({Key? key, required this.fashionModelItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: fashionModelItem.id!,
      child: Image.asset(
        fashionModelItem.modelImage!,
        height: DeviceUtils.size(context).height,
        width: DeviceUtils.size(context).width,
        fit: BoxFit.cover,
      ),
    );
    ;
  }
}
