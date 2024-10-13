import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mech_doc/mechanic/bottom_nav.dart';
import 'package:mech_doc/mechanic/request/edit_profile.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('222831'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNav(),
                            ));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return EditProfile();
                          },
                        ));
                      },
                      child: ImageIcon(
                        color: Colors.white,
                        AssetImage('assets/icons/edit.png')),
                    ),
                  )
                ],
              ),
            ),
            CircleAvatar(
              radius: 70.r,
              backgroundImage: AssetImage('assets/icons/profile.png'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'Name',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
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
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'User name',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
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
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'Phone number',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
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
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'Email',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
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
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'Experience',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
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
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'Location',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
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
                    fillColor: HexColor('##3d495b'),
                    label: Text(
                      'Shop name',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 200.r,
                height: 50.r,
                decoration: BoxDecoration(
                    color: HexColor('#2357D9'),
                    borderRadius: BorderRadius.circular(10).r),
                child: Center(
                  child: Text(
                    'Done',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.r),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
