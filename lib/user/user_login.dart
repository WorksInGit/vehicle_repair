import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/mechanic/sign_up.dart';
import 'package:vehicle_repair/user/tab_view.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#CFE2FF'),
        body: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/icon.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'LOGIN',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 25.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 50.h),
              child: Row(
                children: [
                  Text(
                    'Enter username',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.white,
                    label: Text(
                      'Username',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 30.h),
              child: Row(
                children: [
                  Text(
                    'Enter Password',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter password',
                    hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w300)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180.w, top: 20.h),
              child: Text(
                'Forgot password?',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return TabView();
                  },
                ));
              },
              child: Container(
                width: 200.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: HexColor('#2357D9'),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do you have account? '),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MechSignUp();
                        },
                      ));
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.poppins(color: HexColor('#2357D9')),
                    ))
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
