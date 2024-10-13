import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mech_doc/mechanic/request/mech_accepted.dart';


class MechReq2 extends StatefulWidget {
  const MechReq2({super.key});

  @override
  State<MechReq2> createState() => _MechReq2State();
}

class _MechReq2State extends State<MechReq2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MechAccepted(),));
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
                            Text('Name',style: GoogleFonts.poppins(color: Colors.white))
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [
                            Text('Fuel leaking',style: GoogleFonts.poppins(color: Colors.white)),
                            Text('Date',style: GoogleFonts.poppins(color: Colors.white)),
                            Text('Time',style: GoogleFonts.poppins(color: Colors.white)),
                            Text('Place',style: GoogleFonts.poppins(color: Colors.white)),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 110.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: HexColor('#CD4949'),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Payment pending',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
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
