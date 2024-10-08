import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/admin/mechanic_tab.dart';
import 'package:vehicle_repair/admin/user_tab.dart';
import 'package:vehicle_repair/mechanic/request/mech_notification.dart';
import 'package:vehicle_repair/mechanic/request/mech_req_1.dart';
import 'package:vehicle_repair/mechanic/request/mech_req_2.dart';
import 'package:vehicle_repair/mechanic/request/view_profile.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: HexColor('#E8F1FF'),
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
                        backgroundImage: AssetImage('assets/icons/image.png'),
                      ),
                    ),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                    dividerColor: Colors.white,
                    labelStyle: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#6EA3F3')),
                    tabs: [Tab(text: 'User'), Tab(text: 'Mechanic')]),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(child: TabBarView(children: [UserTab(), MechanicTab()])),
            ],
          )),
    );
  }
}
