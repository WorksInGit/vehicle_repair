import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MechAccepted extends StatefulWidget {
  const MechAccepted({super.key});

  @override
  State<MechAccepted> createState() => _MechAcceptedState();
}

class _MechAcceptedState extends State<MechAccepted> {
  String? radioValue = 'Completed';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('222831'),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 300.w,
              height: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: HexColor('#3d495b')),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/icons/boss.png'),
                      ),
                      Text(
                        'Name',
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Fuel leaking', style: GoogleFonts.poppins(color: Colors.white)),
                      Text('Date', style: GoogleFonts.poppins(color: Colors.white)),
                      Text('Time', style: GoogleFonts.poppins(color: Colors.white)),
                      Text('Place', style: GoogleFonts.poppins(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.h, left: 30.w),
              child: Row(
                children: [
                  Text(
                    'Add status',
                    style: GoogleFonts.poppins(color: Colors.white,
                        fontWeight: FontWeight.w400, fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Radio(
                  value: 'Completed',
                  groupValue: radioValue,
                  onChanged: (value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                ),
                Text(
                  'Completed',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Radio(
                  value: 'Not Completed',
                  groupValue: radioValue,
                  onChanged: (value) {
                    setState(() {
                      radioValue = value;
                    });
                  },
                ),
                Text(
                  'Not Completed',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ],
            ),
            radioValue == 'Completed'
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40.w, top: 60.h),
                        child: Row(
                          children: [
                            Text(
                              'Amount',
                              style: GoogleFonts.poppins(fontSize: 20.sp,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      Container(
                        width: 230.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: Colors.white)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee_sharp,color: Colors.white,),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              '2000/-',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                  fontSize: 20.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
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
                        height: 20.h,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40.w, top: 60.h),
                        child: Row(
                          children: [
                            Text(
                              'Reject reason',
                              style: GoogleFonts.poppins(fontSize: 20.sp,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: 339.w,
                        height: 170.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(color: Colors.white)),
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
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
