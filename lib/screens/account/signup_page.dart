import 'package:flutter/material.dart';

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
      body: Column(
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
    );
  }
}
