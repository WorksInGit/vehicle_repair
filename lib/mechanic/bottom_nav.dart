import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mech_doc/mechanic/rating/mech_rating.dart';
import 'package:mech_doc/mechanic/request/mech_req.dart';
import 'package:mech_doc/mechanic/service/mech_service.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> pages = [MechReq(), MechService(), MechRating()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#222831'),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            backgroundColor: HexColor('#3d495b'),
            currentIndex: selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon:
                  selectedIndex == 0 ? 
                   Icon(EvaIcons.alertCircle,color: Colors.white,) : Icon(EvaIcons.alertCircleOutline,color: Colors.white,),
                  label: 'Request'),
              BottomNavigationBarItem(
                  icon: 
                  selectedIndex == 1 ?
                  Icon(EvaIcons.shield,color: Colors.white,) : Icon(EvaIcons.shieldOutline,color: Colors.white,),
                  label: 'Service'),
              BottomNavigationBarItem(
                
                  icon: 
                  selectedIndex == 2 ? 
                  Icon(EvaIcons.star,color: Colors.white,) : Icon(EvaIcons.starOutline,color: Colors.white,),
                  label: 'Rating'),
            ]),
      ),
    );
  }
}
