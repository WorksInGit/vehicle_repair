import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#222831'),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Service',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: HexColor('#3d495b'),
          leading: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30),
              child: Card(
                child: Container(
                  width: 300.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: HexColor('3d495b')),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Type puncture service',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          Icon(EvaIcons.trash2,color: Colors.white)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Engine service',style: GoogleFonts.poppins(color: Colors.white),),
                          SizedBox(
                            width: 155.w,
                          ),
                          Icon(EvaIcons.trash2,color: Colors.white)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Type puncture service',style: GoogleFonts.poppins(color: Colors.white),),
                          SizedBox(
                            width: 103.w,
                          ),
                          Icon(EvaIcons.trash2,color: Colors.white)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20.w,
                        endIndent: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Type puncture service',style: GoogleFonts.poppins(color: Colors.white),),
                          SizedBox(
                            width: 104.w,
                          ),
                          Icon(EvaIcons.trash2,color: Colors.white)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AddService();
              },
            );
          },
          child: Icon(
            EvaIcons.plusCircle,
            color: Colors.black,
            size: 45.sp,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0.r),
              side: BorderSide(color: Colors.black)),
          elevation: 0,
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: HexColor('#3d495b'),
      title: Text('Add service',style: GoogleFonts.poppins(color: Colors.white),),
      actions: <Widget>[
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r)),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white),
        ),
        SizedBox(
          height: 150.h,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 140.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: HexColor('#2357D9'),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text(
                  'Add',
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
