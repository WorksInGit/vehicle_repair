import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/admin/bottom_nav.dart';

class AddNotification extends StatefulWidget {
  const AddNotification({super.key});

  @override
  State<AddNotification> createState() => _AddNotificationState();
}

class _AddNotificationState extends State<AddNotification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: HexColor('#E8F1FF'),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 20.w),
                  child: Row(
                    children: [Icon(Icons.arrow_back_ios_new_outlined)],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w, top: 50.h),
                  child: Row(
                    children: [
                      Text(
                        'Enter Matter',
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
                        fillColor: Colors.white,
                        label: Text(
                          'Matter',
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        )),
                  ),
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
                    maxLines: 15,
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                      hintText: 'Content . . . .',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
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
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
