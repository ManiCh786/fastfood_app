import 'package:fastfood_app/utils/utils.dart';
import 'package:fastfood_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: BigText(
          text: "Profile",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            // ProfileIcon
            IconButtonWidget(
              onPressed: () {},
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconSize: Dimensions.height45 + Dimensions.height30,
              iconColor: Colors.white,
              size: Dimensions.height15 * 10,
            ),
            SizedBox(height: Dimensions.height30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Name List
                    AccountWidget(
                      iconButtonWidget: IconButtonWidget(
                        icon: Icons.person,
                        onPressed: () {},
                        iconColor: Colors.white,
                        backgroundColor: AppColors.mainColor,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "Mani CH",
                      ),
                    ),
                    SizedBox(height: Dimensions.height30),
                    //Phone
                    AccountWidget(
                      iconButtonWidget: IconButtonWidget(
                        icon: Icons.phone,
                        onPressed: () {},
                        iconColor: Colors.white,
                        backgroundColor: AppColors.yellowColor,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "+923480444597",
                      ),
                    ),
                    SizedBox(height: Dimensions.height30),
                    // email
                    AccountWidget(
                      iconButtonWidget: IconButtonWidget(
                        icon: Icons.email,
                        onPressed: () {},
                        iconColor: Colors.white,
                        backgroundColor: AppColors.yellowColor,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "maniCH@gmail.com",
                      ),
                    ),
                    SizedBox(height: Dimensions.height30),
                    // Address
                    AccountWidget(
                      iconButtonWidget: IconButtonWidget(
                        icon: Icons.location_on,
                        onPressed: () {},
                        iconColor: Colors.white,
                        backgroundColor: AppColors.yellowColor,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "No Address Yet",
                      ),
                    ),
                    SizedBox(height: Dimensions.height30),
                    // Message
                    AccountWidget(
                      iconButtonWidget: IconButtonWidget(
                        icon: Icons.message_outlined,
                        onPressed: () {},
                        iconColor: Colors.white,
                        backgroundColor: Colors.redAccent,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "Coming Soon",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
