import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/user/u_m_details.dart';

class UserMech extends StatefulWidget {
  const UserMech({super.key});

  @override
  State<UserMech> createState() => _UserMechState();
}

class _UserMechState extends State<UserMech> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UMDetails()));
            },
            child: Card(
              child: Container(
                width: 90.w,
                height: 125.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#CFE2FF')),
                child: Row(
                  
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70.w,
                          height: 70.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/buisness_man.png'))),
                        ),
                        Text(
                          'Name',
                          style: GoogleFonts.poppins(),
                        )
                      ],
                    ),
                    Column(
            
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2+ years experience'),
                        Text('Fuel leaking'),
                        Container(
                          width: 100.w,
                          height: 30.h,
                          decoration: BoxDecoration(color: HexColor('#49CD6E'),
                          borderRadius: BorderRadius.circular(20.r)
                          ),
                          child: Center(
                            child: Text(
                              'Available',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 12.sp),
                            ),
                          ),
                        )
                      ],
                    )
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
