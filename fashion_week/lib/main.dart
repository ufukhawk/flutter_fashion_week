import 'package:fashion_week/screen/home/provider/home_provider.dart';
import 'package:fashion_week/screen/home/ui/home_screen.dart';
import 'package:fashion_week/util/localization/app_localizations_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  Get.put(HomeProvider());

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      supportedLocales: [
        Locale('en', 'US'),
      ],
      locale: Locale('en', 'US'),
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
    );
  }
}
