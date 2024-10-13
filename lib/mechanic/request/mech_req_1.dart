import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mech_doc/mechanic/request/service_a_r.dart';

class MechReq1 extends StatefulWidget {
  const MechReq1({super.key});

  @override
  State<MechReq1> createState() => _MechReq1State();
}

class _MechReq1State extends State<MechReq1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceAR(),));
            },
            child: Card(
              child: Container(
                width: 300.w,
                height: 100.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#3d495b')),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30.r,
                              backgroundImage:
                                  AssetImage('assets/icons/boss.png'),
                            ),
                            Text('Name',style: GoogleFonts.poppins(color: Colors.white),)
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w),
                          child: Column(
                            children: [
                              Text('Fuel leaking',style: GoogleFonts.poppins(color: Colors.white)),
                              Text('Date',style: GoogleFonts.poppins(color: Colors.white)),
                              Text('Time',style: GoogleFonts.poppins(color: Colors.white)),
                              Text('Place',style: GoogleFonts.poppins(color: Colors.white)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
