import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/u_or_m.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UOrM(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#CFE2FF'),
        body: Center(
          child: Container(
            width: 140.w,
            height: 140.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/icon.png'),
                    fit: BoxFit.cover)),
          ),
        ));
  }
}
