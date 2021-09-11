import 'package:fashion_week/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgView extends StatefulWidget {
  String svgName;
  double size;
  Color color;

  SvgView({required this.svgName, this.size = 10, this.color = kTextColor});

  @override
  _SvgViewState createState() => _SvgViewState();
}

class _SvgViewState extends State<SvgView> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      widget.svgName,
      height: widget.size,
      color: widget.color,
    );
  }
}
