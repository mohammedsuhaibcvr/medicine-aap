import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pills/shopkepper/home/addmedicine.dart';
import 'package:pills/shopkepper/home/order.dart';
import 'package:pills/shopkepper/profile/editprof.dart';


class ShopNavBare extends StatefulWidget {
  const ShopNavBare({super.key});

  @override
  State<ShopNavBare> createState() => _ShopNavBareState();
}

class _ShopNavBareState extends State<ShopNavBare> {
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
      extendBody: false,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _index=index;
            });
          },
          children: const [
            Orders(),
            ShopAddmedicine(),
            ShopEditProfile(),
            
          ],
        ),
      ),
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.cyan[800],
          items: [
            
             FloatingNavbarItem(icon: Icons.shopping_cart_checkout_rounded, title: 'View Orders'),
            FloatingNavbarItem(icon: Icons.medical_services_outlined,
            title: 'Add Stock'),
            FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
           
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