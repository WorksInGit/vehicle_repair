import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MechRating extends StatefulWidget {
  const MechRating({super.key});

  @override
  State<MechRating> createState() => _MechRatingState();
}

class _MechRatingState extends State<MechRating> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('222831'),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Rating',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: HexColor('#222831'),
          leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'The rating given to you',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w300,color: Colors.white),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 30),
                    child: Card(
                      child: Container(
                        width: 300.w,
                        height: 130.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: HexColor('3d495b')),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage:
                                          AssetImage('assets/icons/boss.png'),
                                    ),
                                    Text(
                                      'Name',
                                      style: GoogleFonts.poppins(color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Engine work',style: GoogleFonts.poppins(color: Colors.white),),
                                    Text('Date',style: GoogleFonts.poppins(color: Colors.white),),
                                    Text('Time',style: GoogleFonts.poppins(color: Colors.white),),
                                    Text('Place',style: GoogleFonts.poppins(color: Colors.white),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Rating',
                                      style: GoogleFonts.poppins(fontSize: 10.sp,color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.sp,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          size: 15.sp,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '4/5',
                                      style: GoogleFonts.poppins(fontSize: 10.sp,color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
