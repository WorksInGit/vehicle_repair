import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/mechanic/request/mech_notification.dart';
import 'package:vehicle_repair/mechanic/request/mech_req_1.dart';
import 'package:vehicle_repair/mechanic/request/mech_req_2.dart';
import 'package:vehicle_repair/mechanic/request/view_profile.dart';

class MechReq extends StatefulWidget {
  const MechReq({super.key});

  @override
  State<MechReq> createState() => _MechReqState();
}

class _MechReqState extends State<MechReq> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 20.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ViewProfile();
                          },
                        ));
                      },
                      child: CircleAvatar(
                        radius: 27.r,
                        backgroundImage: AssetImage('assets/icons/profile.png'),
                      ),
                    ),
                    Spacer(),
                    Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MechNotification(),
                                ));
                          },
                          child: Container(
                            width: 40.r,
                            height: 40.r,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image:
                                  AssetImage('assets/icons/notification.png'),
                            )),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 350.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: HexColor('##E8F1FF'),
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                    dividerColor: Colors.white,
                    labelStyle: GoogleFonts.poppins(color: Colors.black),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#CFE2FF'),
                    ),
                    tabs: [Tab(text: 'Request'), Tab(text: 'Accepted')]),
              ),
              SizedBox(
                height: 40.h,
              ),
              Expanded(child: TabBarView(children: [MechReq1(), MechReq2()])),
            ],
          )),
    );
  }
}
