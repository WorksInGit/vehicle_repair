import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('222831'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
                ],
              ),
            ),
            CircleAvatar(
              radius: 60.r,
              backgroundImage: AssetImage('assets/icons/profile.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Name',
                    style: GoogleFonts.dmSans(
                       color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Name',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Username',
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Username',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Phone number',
                    style: GoogleFonts.dmSans(
                       color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
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
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Phone number',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: GoogleFonts.dmSans(
                       color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Enter email',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Work experience',
                    style: GoogleFonts.dmSans(
                       color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Enter your experience',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'Your location',
                    style: GoogleFonts.dmSans(
                       color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Enter your location',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  Text(
                    'work shop name',
                    style: GoogleFonts.dmSans(
                       color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('3d495b'),
                    label: Text(
                      'Enter your shop name',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    )),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 200.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: HexColor('#2357D9'),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
