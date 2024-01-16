
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_techno/screen/home/home_screen.dart';

import '../../core/utils/app_assets.dart';
import '../login/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

   _goNext() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  LoginScreen(),)) ;

  _startDelay() {
     _timer = Timer(const Duration(milliseconds: 2000), () => _goNext());
  }

  @override
  void initState() {
    super.initState();
      _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Center(
           child: SvgPicture.asset(AppAssets.logo,)
           // Image.asset(AppAssets.logo),
           ),
      ),
    );
  }
}
