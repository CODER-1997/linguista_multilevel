
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:lottie/lottie.dart';

 import '../auth/auth.dart';

class ProfileWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(
            children: [
              // StreamBuilder(
              //   stream: FirebaseAuth.instance.authStateChanges(),
              //   builder: (BuildContext context, AsyncSnapshot snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return CircularProgressIndicator();
              //     } else {
              //       if (snapshot.hasData && snapshot.data != null) {
              //         // User is logged in
              //         return Profile();
              //       } else {
              //         // User is not logged in
              //         return Auth();
              //       }
              //     }
              //   },
              // ),
              Center(
                child: Visibility(
                  visible: true,
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: CupertinoColors.white
                    ),
                      child: Lottie.asset(
                          'assets/images/order_card/loader.json',
                          )),
                ),
              )
            ],
          )),
    );
    ;
  }
}
