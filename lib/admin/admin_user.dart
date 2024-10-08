import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/admin/bottom_nav.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key});

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Row(
                children: [Icon(Icons.arrow_back_ios_new_outlined)],
              ),
            ),
            CircleAvatar(
              radius: 60.r,
              backgroundImage: AssetImage('assets/icons/worker.png'),
            ),
            Text(
              'Name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            Text(
              'Location',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 50.h),
              child: Row(
                children: [
                  Text(
                    'Username',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('#E8F1FF'),
                    label: Text(
                      'Username',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 15.sp),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 30.h),
              child: Row(
                children: [
                  Text(
                    'Phone number',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('#E8F1FF'),
                    label: Text(
                      '0000000000',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 15.sp),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, top: 30.h),
              child: Row(
                children: [
                  Text(
                    'Email address',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('#E8F1FF'),
                    label: Text(
                      'Example@gmail.com',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 15.sp),
                    )),
              ),
            ),
            SizedBox(
              height: 130.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 130.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        color: HexColor('#73ABFF'),
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Center(
                      child: Text(
                        'Accept',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.sp),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 130.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: HexColor('#FF9F9D'),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Center(
                    child: Text(
                      'Reject',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
