import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/admin/admin_mechanic.dart';
import 'package:vehicle_repair/user/user_mech.dart';

class MechanicTab extends StatefulWidget {
  const MechanicTab({super.key});

  @override
  State<MechanicTab> createState() => _MechanicTabState();
}

class _MechanicTabState extends State<MechanicTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminMechanic(),
                  ));
            },
            child: Card(
              child: Container(
                width: 200.w,
                height: 100.h,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/icons/worker.png'),
                      )),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Mobile number',
                          style: GoogleFonts.poppins(),
                        ),
                        Text(
                          'Service',
                          style: GoogleFonts.poppins(),
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
