import 'package:fashion_week/component/base/base_safe_scaffold.dart';
import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:fashion_week/screen/model_detail/component/model_image_view.dart';
import 'package:fashion_week/screen/model_detail/component/model_info_view.dart';
import 'package:fashion_week/screen/model_detail/component/navigation_view.dart';
import 'package:fashion_week/util/device_utils.dart';
import 'package:flutter/material.dart';

class ModelDetailScreen extends StatefulWidget {
  final FashionModelItem fashionModelItem;
  ModelDetailScreen({required this.fashionModelItem});
  @override
  _ModelDetailScreenState createState() => _ModelDetailScreenState();
}

class _ModelDetailScreenState extends State<ModelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      isSafeArea: false,
      isShowAppbar: false,
      child: Container(
          child: Stack(
        children: [
          ModelImageView(
            fashionModelItem: widget.fashionModelItem,
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            height: DeviceUtils.size(context).height,
            width: DeviceUtils.size(context).width,
          ),
          NavigationView(
            fashionModelItem: widget.fashionModelItem,
          ),
          ModelInfoView(fashionModelItem: widget.fashionModelItem),
        ],
      )),
    );
  }
}
