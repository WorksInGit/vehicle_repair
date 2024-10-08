import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ServiceAR extends StatefulWidget {
  const ServiceAR({super.key});

  @override
  State<ServiceAR> createState() => _ServiceARState();
}

class _ServiceARState extends State<ServiceAR> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 30.w),
                  child: Row(
                    children: [Icon(Icons.arrow_back_ios_new_outlined)],
                  ),
                ),
                SizedBox(
                  height: 130.h,
                ),
                Container(
                  width: 330.w,
                  height: 470.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: HexColor('##CFE2FF')),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Name',
                        style: GoogleFonts.poppins(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 70.h, left: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Problem',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  'Place',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  'Date',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  'Time',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  'Contact number',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fuel leaking',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  ':Kozhikode beach road',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  ':12/05/2023',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  '10:00 am',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  ':0000000000',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 100.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: HexColor('#49CD6E')),
                              child: Center(
                                child: Text(
                                  'Accept',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            width: 100.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: HexColor('#CD4949')),
                            child: Center(
                              child: Text(
                                'Reject',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 120.h, left: 155.w),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 40.r,
                backgroundImage: AssetImage('assets/icons/boss.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
