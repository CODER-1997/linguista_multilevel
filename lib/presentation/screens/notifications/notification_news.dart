import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("News"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Lottie.asset('assets/images/lottie/no_news.json',width: Get.width/3,height: Get.height/3),),
    );
  }
}
