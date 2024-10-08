import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/admin/admin_notification.dart';
import 'package:vehicle_repair/admin/admin_payment.dart';
import 'package:vehicle_repair/admin/tab_view.dart';
import 'package:vehicle_repair/mechanic/rating/mech_rating.dart';
import 'package:vehicle_repair/mechanic/request/mech_req.dart';
import 'package:vehicle_repair/mechanic/service/mech_service.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> pages = [TabView(), AdminPayment(), AdminNotification()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            unselectedLabelStyle: GoogleFonts.poppins(color: Colors.black),
            selectedLabelStyle: GoogleFonts.poppins(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    color: Colors.black,
                    AssetImage('assets/icons/home.png'),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    color: Colors.black,
                    AssetImage('assets/icons/wallet.png'),
                  ),
                  label: 'Payment'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Colors.black,
                      AssetImage('assets/icons/chat.png')),
                  label: 'Notification'),
            ]),
      ),
    );
  }
}
