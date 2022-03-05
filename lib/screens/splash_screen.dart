import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.offAllNamed('/HomeScreen'));
    return const Scaffold(
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
