import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            // Image Logo
            Center(
              child: Container(
                height: Dimensions.screenHeight * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png")),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),

            //  Hello Txt
            Container(
              width: double.maxFinite,
              //  decoration: BoxDecoration(),
              margin: EdgeInsets.only(left: Dimensions.width20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Dimensions.font20 * 3 + Dimensions.font20 / 2),
                    ),
                    SizedBox(height: Dimensions.height10),
                    // Sign in with your account Text
                    RichText(
                      text: TextSpan(
                        text: " Sign in with your account ",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: Dimensions.font20),
                      ),
                    ),
                  ]),
            ),
            // Email Text Field
            SizedBox(height: Dimensions.height20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  AppTextField(
                    hintText: "Email",
                    prefixIcon: Icons.email,
                    textFieldController: emailController,
                  ),
                  // Password Text Field
                  SizedBox(height: Dimensions.height20),
                  AppTextField(
                    hintText: "Password",
                    prefixIcon: Icons.password_sharp,
                    textFieldController: passwordController,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            // SignIn Button
            GestureDetector(
              onTap: () {
                Get.offAllNamed("/HomeScreen");
              },
              child: Container(
                width: Dimensions.screenWidth / 2,
                height: Dimensions.screenHeight / 13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.mainColor,
                ),
                child: Center(
                  child: BigText(
                    text: "Sign In",
                    size: Dimensions.font20 + Dimensions.font20 / 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),
            // Dont hava account text
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                      color: Colors.grey[500], fontSize: Dimensions.font20),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.toNamed("/signupPage"),
                  text: " Create",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: Dimensions.font20 - 4),
                ),
              ]),
            ),
            SizedBox(height: Dimensions.height20),
          ],
        ),
      ),
    );
  }
}
