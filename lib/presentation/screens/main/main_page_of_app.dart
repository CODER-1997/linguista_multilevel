import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linguista_multilevel_app/data/constants/theme.dart';
import 'package:get/get.dart';
import 'package:linguista_multilevel_app/presentation/screens/notifications/notification_news.dart';
class MainPageOfApp extends StatelessWidget {
  const MainPageOfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homePagebg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            Get.to(News());
          }, icon: Icon(CupertinoIcons.bell))
        ],
      ),
    );
  }
}
