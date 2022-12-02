import 'package:email_form/views/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Future.delayed(Duration(seconds: 3), () => Get.toNamed(homepage));
  //   super.initState();
  // }
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3),()=> Get.toNamed(homepage));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircularProgressIndicator(),

      ),
    );
  }
}
