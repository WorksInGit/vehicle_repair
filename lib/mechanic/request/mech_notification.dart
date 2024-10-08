import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MechNotification extends StatefulWidget {
  const MechNotification({super.key});

  @override
  State<MechNotification> createState() => _MechNotificationState();
}

class _MechNotificationState extends State<MechNotification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('##CFE2FF'),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text(
            'Notification',
            style: GoogleFonts.poppins(),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Card(
                  child: Container(
                    width: 200.w,
                    height: 130.h,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.5.r,
                              blurRadius: 5.r,
                              offset: Offset(0.r, 8.r))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(width: 0.5.w)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Admin notification',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Text('10:00 am'),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text('10/05/2023', style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300),)],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
