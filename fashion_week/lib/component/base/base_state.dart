import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>
    with WidgetsBindingObserver {
  final Connectivity _connectivity = Connectivity();

  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  bool isOnline = true;
  Future<void> initConnectivity() async {
    try {
      await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      if (kDebugMode) print(e.toString());
    }
    if (!mounted) {
      return;
    }
    await _updateConnectionStatus().then((bool isConnected) {
      if (mounted) {
        setState(() {
          print(isConnected);
          isOnline = isConnected;
        });
      }
    });
  }

  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;
  double dynamicWidth(double value) =>
      MediaQuery.of(context).size.width * value;
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (kDebugMode) print('state = $state');
  }

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      await _updateConnectionStatus().then((bool isConnected) {
        if (mounted) {
          setState(() {
            isOnline = isConnected;
            /* print("isOnline");
            print(isOnline);*/
          });
        }
      });
    });
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    // print("_connectivitySubscription");
    super.dispose();
  }

  Future<bool> _updateConnectionStatus() async {
    bool isConnected = false;

    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com')
              .timeout(const Duration(seconds: 4));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isConnected = true;
      }
    } on SocketException catch (_) {
      isConnected = false;
      return false;
    } on TimeoutException catch (_) {
      isConnected = false;
      return false;
    }
    return isConnected;
  }
}
