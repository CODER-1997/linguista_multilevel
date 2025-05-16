
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:linguista_multilevel_app/presentation/screens/home/home_screen.dart';

import 'package:upgrader/upgrader.dart';
import 'data/constants/lang.dart';
import 'package:firebase_core/firebase_core.dart';

import 'data/constants/utils.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Upgrader.clearSavedSettings();

  // Subscribe to your topic (replace with your actual topic name)

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var box = GetStorage();

  void setUpPushNotification() async {
    final fcm = await FirebaseMessaging.instance;

    await fcm.requestPermission();

    await FirebaseMessaging.instance.subscribeToTopic("all");
   }


  @override
  void initState() {
    Utils().getAppVersion();

    super.initState();

    setUpPushNotification();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      translations: LanguageTranslations(),
      locale: Locale(
          box.read("lang_code_1") ?? 'ru', box.read('lang_code_2') ?? 'UZ'),
      fallbackLocale: Locale(
          box.read("lang_code_1") ?? 'ru', box.read('lang_code_2') ?? 'UZ'),
    );
  }
}
