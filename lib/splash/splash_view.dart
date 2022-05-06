import 'package:demofinsire/res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  final controller = Get.put(Splashcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(Res.loading,height: 120),
            SizedBox(height: 10,),
            Text('Loading...Please Wait..',style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),)
          ],
        ),
      ),
    );
  }
}
