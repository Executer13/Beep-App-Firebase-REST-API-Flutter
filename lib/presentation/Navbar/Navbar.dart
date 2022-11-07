import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yasan_s_application1/core/utils/color_constant.dart';
import 'package:yasan_s_application1/presentation/cars_screen/cars_screen.dart';
import 'package:yasan_s_application1/presentation/home_screen/home_screen.dart';
import 'package:yasan_s_application1/presentation/recharge_screen/recharge_screen.dart';

import 'controller/navbar_controller.dart';

class Navbar extends StatelessWidget {

  late int currentIndex;
  final NavbarController controller = Get.put(NavbarController());
 
final screens=[
HomeScreen(),
CarsScreen(),
RechargeScreen(),
CarsScreen(),
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
body: WillPopScope(
    onWillPop: () async => false,
  child:   Obx(()=>IndexedStack(
  
  
  
    index:controller.SelectedIndex.value,
  
    children:screens
  
  )),
),
  
      floatingActionButton: FloatingActionButton(elevation: 8,
        onPressed: () {},
        child: Text('Book',style: TextStyle(color: ColorConstant.whiteA700)),
        backgroundColor: ColorConstant.lightGreen600,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Obx(()=> BubbleBottomBar(
        hasInk: true,
        inkColor:ColorConstant.whiteA700 ,
        backgroundColor: ColorConstant.indigo501,
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.center,
        opacity: .2,
        currentIndex: controller.SelectedIndex.value,
        onTap: (index){
          controller.setCurrentIndex(index);
        },
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        tilesPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 2, 
        ),
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            
            badgeColor: Colors.transparent,
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.white
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text("Home"),
          ),BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text("Profile")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.calendar_month,
                color: Colors.white,
              ),
              
              title: Text("Bookings")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.drive_eta_outlined,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.drive_eta_outlined,
                color: Colors.white,
              ),
              title: Text("Cars")),
          
        ],
      )),

    );
  }
}