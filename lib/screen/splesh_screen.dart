import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myburgo_test/screen/home_page.dart';
import 'package:nb_utils/nb_utils.dart';

import '../main.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      appStore.getChallangesList();
      appStore.getVideoRecorededList();
      appStore.getWorkShopList();

      HomePage().launch(context,
          isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
