import 'package:fastfood_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Text("Main Screen"),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed("/MainFoodPage");
              },
              child: Text("MainFoodPage"),
            ),
          ],
        ),
      ),
    ));
  }
}
