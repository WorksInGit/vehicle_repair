import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vehicle_repair/user/user_payment.dart';

class MechBill extends StatefulWidget {
  const MechBill({super.key});

  @override
  State<MechBill> createState() => _MechBillState();
}

class _MechBillState extends State<MechBill> {
  final List<String> services = [
    'Fuel leaking',
    'Battery check',
    'Break pad replacement',
    'Tyre changing and repair'
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#CFE2FF'),
          leading: Icon(Icons.arrow_back_ios_new_outlined),
          title: Text('Mechanic Bill'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 130.w,
                height: 130.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/buisness_man.png'))),
              ),
              Text(
                'Name',
                style: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text('2+ years experience', style: GoogleFonts.poppins()),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 100.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: HexColor('#49CD6E'),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Center(
                  child: Text(
                    'Available',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 13.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 25.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 25.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 25.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 25.sp,
                  ),
                  Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                    size: 25.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  ImageIcon(AssetImage('assets/icons/edit.png'))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 60.h),
                child: Row(
                  children: [
                    Text(
                      'Amount',
                      style: GoogleFonts.poppins(fontSize: 20.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Container(
                width: 230.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.currency_rupee_sharp),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      '2000/-',
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserPayment(),
                      ));
                },
                child: Container(
                  width: 200.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: HexColor('#2357D9'),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                    child: Text(
                      'Payment',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
