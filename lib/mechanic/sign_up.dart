import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/mechanic/bottom_nav.dart';

class MechSignUp extends StatefulWidget {
  const MechSignUp({super.key});

  @override
  State<MechSignUp> createState() => _MechSignUpState();
}

class _MechSignUpState extends State<MechSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#CFE2FF'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 20.w),
                child: Row(
                  children: [Icon(Icons.arrow_back_ios_new_rounded)],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/icon.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Text(
                'SIGN UP',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 25.sp),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
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
                height: 5.h,
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
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Enter Phone number',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Phone number',
                      hintStyle:
                          GoogleFonts.poppins(fontWeight: FontWeight.w300)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      'Enter your email',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
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
                        'Enter email',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      'Enter your work experience  ',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
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
                        'Enter your experience  ',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 5.h),
                child: Row(
                  children: [
                    Text(
                      'Enter your work shop name  ',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
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
                        'Enter your shop name',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
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
                height: 5.h,
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
                      hintText: 'Enter your password ',
                      hintStyle:
                          GoogleFonts.poppins(fontWeight: FontWeight.w300)),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav(),));
                },
                child: Container(
                  width: 200.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: HexColor('#2357D9'),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
