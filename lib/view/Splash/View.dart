import 'dart:async';

import 'package:courses/Core/extentions/double.dart';
import 'package:courses/Core/extentions/string.dart';
import 'package:courses/Core/route_Units/route_units.dart';
import 'package:courses/Core/utils/colors.dart';
import 'package:courses/View/onbording/view.dart';
import 'package:courses/main.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      RouteUtils.pushAndRemoveAll(context, onboardingView());

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child:
        Image.asset(
         'Full-logo'.assetPNG,
           height: 68.height,width: 268.width,
        )

        ,
      ),
    );
  }
}
