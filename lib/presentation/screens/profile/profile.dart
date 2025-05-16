import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:linguista_multilevel_app/presentation/screens/profile/support_center.dart';
import '../../../data/constants/theme.dart';
import '../../custom_widgets/settings_item.dart';
import '../about_app/about_app.dart';
import '../settings/change_language_screen.dart';

class Profile extends StatelessWidget {
  Rx count = 0.obs;
  var box = GetStorage();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: homePagebg,
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.white,
         ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                 Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.to(ChangeLanguageScreen());
                              },
                              child: SettingsItem(
                                  icon: Icons.translate, title: 'app_lang'.tr)),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.to(AboutApp());
                              },
                              child: SettingsItem(
                                  icon: Icons.account_balance_outlined,
                                  title: 'about_app'.tr.capitalizeFirst!)),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.to(SupportCenter());
                              },
                              child: SettingsItem(
                                  icon: Icons.help_outline,
                                  title: 'help'.tr.capitalizeFirst!)),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                              onTap: () {
                               },
                              child: SettingsItem(
                                  icon: Icons.logout,
                                  title: '_logout'.tr.capitalizeFirst!)),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                              onTap: () {
                               },
                              child: SettingsItem(
                                  icon: Icons.delete,
                                  iconColor: Colors.red,
                                  titleColor: Colors.red,
                                  title: 'delete_account'.tr.capitalizeFirst!)),
                        ],
                      ),
                       Container(height: Get.height/3 + 32),
                       Text('app_version'.tr.capitalizeFirst! + ' ' + GetStorage().read('app_version') + " + " + GetStorage().read('app_build_number'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
