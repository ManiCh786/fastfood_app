import 'package:fastfood_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigText(
          text: "Profile",
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
