import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mech_doc/user/user_mech.dart';
import 'package:mech_doc/user/user_request.dart';

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
            backgroundColor: HexColor('222831'),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: HexColor('#222831'),
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
                              color: Colors.white,
                                fontWeight: FontWeight.w200, fontSize: 15.sp),
                          ),
                          prefixIcon: Icon(Iconsax.search_normal_1,color: Colors.white,),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              borderSide: BorderSide(color: Colors.transparent)),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: HexColor('3d495b')),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Icon(Iconsax.notification5,color: Colors.white,size: 30.sp,)
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
                            color: Colors.grey),
                        child: TabBar(
                            labelStyle: GoogleFonts.poppins(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15.sp),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorColor: HexColor('#2357D9'),
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              shape: BoxShape.rectangle,
                              color: HexColor('#3d495b'),
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
