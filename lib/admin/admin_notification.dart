import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:mech_doc/admin/add_notification.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
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
                    backgroundImage: AssetImage('assets/icons/image.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('notification')
                  .snapshots(),
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
                final notification = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: notification.length,
                  itemBuilder: (context, index) {
                    var notiData =
                        notification[index].data() as Map<String, dynamic>;
                    Timestamp timestamp = notiData['timestamp'];
                    DateTime dateTime = timestamp.toDate();
                    String formattedTime =
                        DateFormat('hh:mm a').format(dateTime);
                    DateFormat('dd/MM/yyyy').format(dateTime);
                    return Padding(
                      padding: EdgeInsets.all(8.0).r,
                      child: Card(
                        elevation: 0,
                        color: HexColor('3d495b'),
                        shape: Border(),
                        child: ListTile(
                          title: Row(
                            children: [
                              Text(
                                notiData['matter'],
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    formattedTime,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                        color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                          subtitle: Wrap(
                            children: [
                              Text(
                                notiData['content'],
                                style: GoogleFonts.poppins(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          shape: OvalBorder(side: BorderSide(color: Colors.black)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNotification(),
                ));
          },
          child: Icon(EvaIcons.plusCircle, size: 50.sp, color: Colors.black),
        ),
      ),
    );
  }
}
