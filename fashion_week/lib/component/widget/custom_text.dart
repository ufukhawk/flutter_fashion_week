import 'package:fashion_week/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  String text;
  Color? textColor;
  double? textSize;
  FontWeight fontWeight;
  TextDecoration textDecoration;
  TextAlign textAlign;
  TextOverflow textOverflow;
  int? maxLine;
  var fontFamily;
  CustomText(
      {required this.text,
      this.maxLine,
      this.textSize = 15.0,
      this.textColor = kTextColor,
      this.textOverflow = TextOverflow.ellipsis,
      this.textDecoration = TextDecoration.none,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.start,
      this.fontFamily = GoogleFonts.poppins});

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      maxLines: widget.maxLine,
      textScaleFactor: 0.95,
      overflow: widget.textOverflow,
      style: widget.fontFamily(
          decoration: widget.textDecoration,
          color: widget.textColor,
          fontSize: widget.textSize,
          fontWeight: widget.fontWeight),
      textAlign: widget.textAlign,
    );
  }
}
