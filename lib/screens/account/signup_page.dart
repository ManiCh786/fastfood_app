import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
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
            Center(
              child: Container(
                height: Dimensions.screenHeight * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png")),
                ),
              ),
            ),

            // Email Text Field
            SizedBox(height: Dimensions.height20),
            // Form Fields
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
                  // Name Text Field

                  SizedBox(height: Dimensions.height20),
                  AppTextField(
                    hintText: "Name",
                    prefixIcon: Icons.person,
                    textFieldController: nameController,
                  ),
                  // Phone No Text Field

                  SizedBox(height: Dimensions.height20),
                  AppTextField(
                    hintText: "Phone",
                    prefixIcon: Icons.phone,
                    textFieldController: phoneController,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),

            // SignUp Button
            GestureDetector(
              onTap: () {},
              onDoubleTap: () {
                Get.offAllNamed("/AdminMainScreen");
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
                    text: "SignUp",
                    size: Dimensions.font20 + Dimensions.font20 / 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            // Already Have an account Text
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.toNamed("/signInPage"),
                text: "Already have an Account?",
                style: TextStyle(
                    color: Colors.grey[500], fontSize: Dimensions.font20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
