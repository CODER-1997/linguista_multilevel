
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get_storage/get_storage.dart';
import 'package:linguista_multilevel_app/presentation/screens/main/main_page_of_app.dart';
import 'package:linguista_multilevel_app/presentation/screens/profile/profile.dart';
import 'package:upgrader/upgrader.dart';

import '../introduction_screen/introduction_screen.dart';



class Home extends StatelessWidget {
  var box = GetStorage();
 static RxInt currentIndex = 0.obs;
  RxList screens = [
    MainPageOfApp(),
    MainPageOfApp(),
    Profile(),
     ].obs;

  @override
  Widget build(BuildContext context) {
    return box.read('isSecondTime') != null
        ? Obx(() => Scaffold(
              body: Container(
                height: Get.height,
                // padding: EdgeInsets.only(left: 16,right: 16,top: 16),
                child: screens[currentIndex.value],
              ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,

                selectedItemColor: Colors.blueAccent,
                unselectedItemColor: Colors.black,
                currentIndex: currentIndex.value,
                onTap: (int index) {
                  currentIndex.value = index;
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.rocket_launch_rounded  ),
                    label: 'home'.tr.capitalizeFirst,
                  ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(CupertinoIcons.rocket_fill),
                  //   label: 'active_orders'.tr.capitalizeFirst,
                  // ),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.clock),
                    label: 'history'.tr.capitalizeFirst,
                  ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(Icons.cancel),
                  //   label: 'rejected_orders'.tr.capitalizeFirst,
                  // ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person),
                    label: 'profile'.tr.capitalizeFirst,
                  ),
                ],
              ),
            ))
        : IntroScreenDemo();
  }
}
