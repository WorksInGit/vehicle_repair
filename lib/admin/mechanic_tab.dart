import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mech_doc/admin/admin_mechanic.dart';


class MechanicTab extends StatefulWidget {
  const MechanicTab({super.key});

  @override
  State<MechanicTab> createState() => _MechanicTabState();
}

class _MechanicTabState extends State<MechanicTab> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('mechSignUp').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error : ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }
        final mech = snapshot.data!.docs;
        return ListView.builder(
          itemCount: mech.length,
          itemBuilder: (context, index) {
            var mechIndex = snapshot.data!.docs[index];
            var mechData = mech[index].data() as Map<String, dynamic>;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminMechanic(mechIndex: mechIndex),
                      ));
                },
                child: Card(
                  color: HexColor('3d495b'),
                  child: Builder(builder: (context) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                              image: DecorationImage(
                            image: NetworkImage(mechData['profile'])
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
                              mechData['username'],
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              mechData['phoneNumber'],
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            Text(
                              'Service',
                              style: GoogleFonts.poppins(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    );
                  }),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
