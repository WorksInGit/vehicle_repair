import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class UMDetails extends StatefulWidget {
  const UMDetails({super.key});

  @override
  State<UMDetails> createState() => _UMDetailsState();
}

class _UMDetailsState extends State<UMDetails> {
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
        backgroundColor: HexColor('222831'),
        appBar: AppBar(
          backgroundColor: HexColor('222831'),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:  Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
          title: Text('Needed service',style: TextStyle(color: Colors.white),),
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
                style: GoogleFonts.poppins(color: Colors.white),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text('Contact number', style: GoogleFonts.poppins(color: Colors.white)),
              Text('2+ years experience', style: GoogleFonts.poppins(color: Colors.white)),
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
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Text(
                      'Add needed service',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.white),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: HexColor('3d495b'),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DropdownButton(
                          hint: Text(
                            'Select service',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                          dropdownColor: HexColor('3d495b'),
                          
                          underline: SizedBox.shrink(),
                          icon: Padding(
                            padding: EdgeInsets.only(left: 75.w),
                            child: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                          ),
                          value: selectedValue,
                          items: services.map((String service) {
                            return DropdownMenuItem(
                              child: Text(
                                service,
                                style: GoogleFonts.poppins(fontSize: 14.sp,color: Colors.white),
                              ),
                              value: service,
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 23.sp,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: Container(
                  width: 300.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: HexColor('3d495b'),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DropdownButton(
                        dropdownColor: HexColor('3d495b'),
                        underline: SizedBox.shrink(),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 75.w),
                          child: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                        ),
                        items: services.map((String service) {
                          return DropdownMenuItem(
                            child: Text(service,style: GoogleFonts.poppins(color: Colors.white,fontSize: 14.sp),),
                            value: service,
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue;
                          });
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    'Place',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: Container(
                  width: 300.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('3d495b')),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Beach road calicut',style: GoogleFonts.poppins(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 200.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: HexColor('#2357D9'),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                    child: Text(
                      'Request',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
