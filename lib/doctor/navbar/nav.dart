import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pills/doctor/chats/chat.dart';
import 'package:pills/doctor/profile/profile.dart';


class DoctorNavBar extends StatefulWidget {
  const DoctorNavBar({super.key});

  @override
  State<DoctorNavBar> createState() => _DoctorNavBarState();
}

class _DoctorNavBarState extends State<DoctorNavBar> {
 int _index = 0;
 late PageController _pageController;

 @override
 void initState(){
  super.initState();
  _pageController = PageController();
 }
 @override
 void dispose(){
  _pageController.dispose();
  super.dispose();

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _index=index;
            });
          },
          children: const [
            Chat(),
            DoctorProfile()
            //AdminPendingDoctor()
          ],
        ),
      ),
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.blueGrey[700],
          items: [
            FloatingNavbarItem(icon: Icons.medical_services_outlined,
            title: 'Doctor'),
            FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
            //FloatingNavbarItem(icon: Icons.approval_outlined, title: 'Approved List'),
            // FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),

          ], 
          currentIndex: _index, 
          onTap:(index){
           setState(() {
             _pageController.jumpToPage(index);
           });
          }
      ),
    );
  }
}