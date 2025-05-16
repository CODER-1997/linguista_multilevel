 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linguista_multilevel_app/data/constants/text_extensions.dart';
import 'package:linguista_multilevel_app/data/constants/theme.dart';
import 'package:linguista_multilevel_app/presentation/custom_widgets/gradient_button.dart';
  
import 'package:package_info_plus/package_info_plus.dart';

 class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {

  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _version = '${info.version}+${info.buildNumber}';
    });
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homePagebg,
      appBar: AppBar(
        title: Text("about_app".tr.capitalizeFirst!),
         backgroundColor: Colors.white,

      ),
      body: Padding(
        padding:
        const EdgeInsets.only(left: 32.0, right: 32, bottom: 30, top: 8),
        child: Column(
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/logoes/logo.png',width: 64,height: 64,),
                        Text("Linguista").w(700).s(32).c(Color(0xFF703EDB)),
                        SizedBox(height: 8,),

                        Text("Ingliz tili dasturi")
                            .w(300)
                            .s(18)
                            .c(Color(0xFF2A174E)),
                      ],
                    ),
                    SizedBox(height: 8,),

                    SizedBox(height: 8,),
                    Container(
                      height: Get.height/2,
                      child: Text(
                        'about_app_txt'.tr,
                        style: TextStyle(
                            fontSize: 18

                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 2)
                  ],
                )),

            SizedBox(height: 8),
            CustomButton(
              color:mainAppColor,
                text: "Play marketda baholash",  ),
          ],
        ),
      ),
    );
  }
}
