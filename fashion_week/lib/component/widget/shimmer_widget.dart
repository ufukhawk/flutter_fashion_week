import 'package:fashion_week/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class ShimmerWidget extends StatefulWidget {
  Widget child;

  ShimmerWidget({required this.child});

  @override
  _ShimmerWidgetState createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: widget.child,
      baseColor: kWhiteColor,
      highlightColor: Colors.grey.withOpacity(0.4),
    );
  }
}
