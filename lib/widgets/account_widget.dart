import 'package:fastfood_app/widgets/big_text.dart';
import 'package:fastfood_app/widgets/iconbutton_widget.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AccountWidget extends StatelessWidget {
  IconButtonWidget iconButtonWidget;
  BigText bigText;

  AccountWidget(
      {Key? key, required this.iconButtonWidget, required this.bigText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 5),
            color: Colors.grey.withOpacity(0.2),
          )
        ],
      ),
      padding: EdgeInsets.only(
        left: Dimensions.width20,
        top: Dimensions.width10,
        bottom: Dimensions.width10,
      ),
      child: Row(children: [
        iconButtonWidget,
        SizedBox(width: Dimensions.width20),
        bigText,
      ]),
    );
  }
}
