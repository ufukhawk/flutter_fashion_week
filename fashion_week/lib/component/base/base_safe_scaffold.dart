import 'package:fashion_week/component/base/base_state.dart';
import 'package:fashion_week/component/widget/svg_view.dart';
import 'package:fashion_week/screen/no_internet/ui/no_internet_screen.dart';
import 'package:fashion_week/util/constant.dart';
import 'package:flutter/material.dart';

class SafeScaffold extends StatefulWidget {
  final Widget child;
  final Color? bgColor;
  final Color? appBarColor;
  final bool isShowAppbar;
  final bool isShowNavigationBar;
  final bool isShowBackArrow;
  final bool isSafeArea;
  SafeScaffold(
      {required this.child,
      this.bgColor = kWhiteColor,
      this.appBarColor = kWhiteColor,
      this.isShowAppbar = true,
      this.isShowBackArrow = true,
      this.isSafeArea = true,
      this.isShowNavigationBar = false});

  @override
  _SafeScaffoldState createState() => _SafeScaffoldState();
}

class _SafeScaffoldState extends BaseState<SafeScaffold> {
  @override
  Widget build(BuildContext context) {
    return isOnline
        ? Scaffold(
            backgroundColor: widget.bgColor,
            appBar: widget.isShowAppbar
                ? AppBar(
                    automaticallyImplyLeading: widget.isShowBackArrow,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgView(
                          svgName: "assets/icon/menu.svg",
                        ),
                        SvgView(
                          svgName: "assets/icon/search.svg",
                          size: 25,
                        )
                      ],
                    ),
                    backgroundColor: widget.appBarColor,
                    iconTheme: IconThemeData(
                        color: widget.appBarColor == kAppColor
                            ? kWhiteColor
                            : kAppColor),
                    elevation: 0,
                  )
                : null,
            body: widget.isSafeArea
                ? SafeArea(child: widget.child)
                : widget.child,
          )
        : Scaffold(
            body: NoInternetScreen(),
          );
  }
}
