import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({super.key});

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
   String? adminId;
  String? imageUrl;

  @override
  void initState() {
    super.initState();
    getAdminId();
  }

  Future<String?> getAdminId() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    String? id = preferences.getString('adminId');
    if (id != null) {
      setState(() {
        adminId = id;
      });
      String? storedImageUrl = preferences.getString('imageUrl');
      if (storedImageUrl != null) {
        setState(() {
          imageUrl = storedImageUrl;
        });
      }
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('adminLogin')
          .doc(adminId)
          .get();
      if (doc.exists) {
        setState(() {
          imageUrl = doc['profile'];
        });
        preferences.setString('imageUrl', imageUrl!);
      } else {
        print('Doc not found');
      }
    } else {
      print('Admin id not found in sharedpreferences');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('222831'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: 
                    adminId != null && imageUrl != null ?
                    NetworkImage(
                      imageUrl!
                    ) : AssetImage('assets/icons/person.png')  as ImageProvider

                  
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Card(
                    child: Container(
                      width: 200.w,
                      height: 115.h,
                      decoration: BoxDecoration(color: HexColor('3d495b')),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee_sharp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '5455/-',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Text(
                                'Service',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Mechanic name',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 10.w, top: 10.h),
                                child: Text(
                                  '10/11/2023',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
