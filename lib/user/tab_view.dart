import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/user/user_mech.dart';
import 'package:vehicle_repair/user/user_request.dart';

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
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: HexColor('#CFE2FF'),
              actions: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: CircleAvatar(
                    radius: 23.r,
                    backgroundImage: AssetImage('assets/icons/image.png'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.h),
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text(
                            'search',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w200, fontSize: 15.sp),
                          ),
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              borderSide: BorderSide(color: Colors.transparent)),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/notification.png'))),
                  ),
                )
              ],
            ),
            body: Stack(
              children: [
                Column(
                  children: [
                  Expanded(
                    child: TabBarView(children: [
                      UserMech(),
                      UserRequest()
                    ]),
                  ),
                    SizedBox(
                      height: 100.h,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30.h,left: 30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 330.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: HexColor('##E8F1FF')),
                        child: TabBar(
                            labelStyle: GoogleFonts.poppins(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15.sp),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorColor: HexColor('#2357D9'),
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              shape: BoxShape.rectangle,
                              color: HexColor('#2357D9'),
                            ),
                            dividerColor: Colors.transparent,
                            tabs: [
                              Tab(
                                text: 'Mechanic',
                              ),
                              Tab(
                                text: 'Request',
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
