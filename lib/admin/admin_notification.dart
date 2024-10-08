import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/admin/add_notification.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#E8F1FF'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage('assets/icons/image.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Card(
                    child: Container(
                      width: 200.w,
                      height: 115.h,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h,left: 14.w),
                            child: Row(
                              children: [
                                Text(
                                  'Heading',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Wrap(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2.h,left: 5.w),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                      'Loren ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying .....',style: GoogleFonts.poppins(),),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: OvalBorder(side: BorderSide(color: Colors.blue)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNotification(),));
          },
          child: Icon(
            Icons.add,
            size: 50.sp,
            color: HexColor('#2357D9'),
          ),
        ),
      ),
    );
  }
}
