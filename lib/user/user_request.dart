import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mech_doc/user/mech_bill.dart';

class UserRequest extends StatefulWidget {
  const UserRequest({super.key});

  @override
  State<UserRequest> createState() => _UserRequestState();
}

class _UserRequestState extends State<UserRequest> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MechBill();
              },));
            },
            child: Card(
              child: Container(
                width: 90.w,
                height: 125.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('3d495b')),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                              'Date',
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                              'Time',
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                              'Change oil & filter',
                              style: GoogleFonts.poppins(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: HexColor('#49CD6E')),
                              child: Center(
                                child: Text(
                                  'Pay',
                                  style: GoogleFonts.poppins(color: Colors.white),
                                ),
                              ),
                            )
                          ],
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
