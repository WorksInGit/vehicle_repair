import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/admin/admin_login.dart';
import 'package:vehicle_repair/mechanic/mech_login.dart';
import 'package:vehicle_repair/user/user_login.dart';


class UOrM extends StatefulWidget {
  const UOrM({super.key});

  @override
  State<UOrM> createState() => _UOrMState();
}

class _UOrMState extends State<UOrM> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#CFE2FF'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 30.w),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
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
            Padding(
              padding: EdgeInsets.only(left: 50.w, top: 30.h),
              child: Row(
                children: [
                  Text(
                    'Who you are',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return MechLogin();
                      },
                    ));
                  },
                  child: Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: HexColor('#2357D9'),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Text(
                        'Mechanic',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserLogin(),));
                  },
                  child: Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.all(10.0.r),
                      child: Text(
                        'User',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            TextButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminLogin(),));
              },
              child: Text(
              'Admin Login',
              style: GoogleFonts.poppins(
                  color: HexColor('##2357D9'),
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
              )
            ),
            Spacer(),
            Container(
              width: 200.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: HexColor('#2357D9'),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text(
                  'CONTINUE',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
              ),
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
