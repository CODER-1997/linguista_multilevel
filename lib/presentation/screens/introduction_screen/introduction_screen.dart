 import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:linguista_multilevel_app/data/constants/theme.dart';

import '../home/home_screen.dart';

class IntroScreenDemo extends StatefulWidget {
  @override
  State<IntroScreenDemo> createState() => _IntroScreenDemoState();
}

var box = GetStorage();
void setUpPushNotification() async {
  final fcm = await FirebaseMessaging.instance;

  await fcm.requestPermission(
  );
  String? token = await fcm.getToken();

  print(token);


  await FirebaseMessaging.instance.subscribeToTopic("all");
  await FirebaseMessaging.instance.subscribeToTopic("${box.read('companyId') ?? 'all'}");

}


class _IntroScreenDemoState extends State<IntroScreenDemo> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  var box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        globalBackgroundColor:homePagebg,
        bodyPadding: EdgeInsets.only(top: Get.height / 6),
        // 2. Pass that key to the `IntroductionScreen` `key` param
        key: _introKey,
        pages: [
          PageViewModel(


            title: "Ilova haqida",
            body:
                "Linguista ilovasi orqali ingliz tilini qulay o'rganing.",
            image: Center(
              child: Image.asset('assets/images/intro/about_app.png'),
            ),
          ),
          PageViewModel(
            title: "Video darslar",
            body: "Mavzular uchun sifatli video darslar !",
            image: Center(
              child: Image.asset('assets/images/intro/video_lesson.png'),
            ),
          ),
          PageViewModel(
            title: "Imtihon va testlar",
            body: "O'rgangan bilimingizni mavzulashtirilgan testlar orqali tekshirish imkoniyati !",
            image: Center(
              child: Image.asset('assets/images/intro/quiz.png'),
            ),
          )
        ],
        showBackButton: true,
        showNextButton: false,
        back: const Icon(Icons.arrow_back),
        done: const Text("Keyingisi"),
        onDone: () {
          box.write('isSecondTime', false);
          setUpPushNotification();

          Get.offAll(Home());
        });
  }
}
