import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linguista_multilevel_app/data/constants/theme.dart';
import 'package:get/get.dart';
import 'package:linguista_multilevel_app/presentation/screens/notifications/notification_news.dart';
class MainPageOfApp extends StatelessWidget {
    MainPageOfApp({super.key});
  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: ListTile(
            title: Text(items[index]),
            onTap: () {
              Get.to(News());


            },
          ),
        ),
      ),
    );
  }
}
