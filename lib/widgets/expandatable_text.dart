import 'package:fastfood_app/controllers/controllers.dart';
import 'package:fastfood_app/utils/utils.dart';
import 'package:fastfood_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandableTextWidget extends GetView<ProductDetailsPageController> {
  final String text;
  late String firsthalf;
  late String secondhalf;
  final int firstHalfLength;
  ExpandableTextWidget({
    Key? key,
    required this.text,
    this.firstHalfLength = 600,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return splitText();
  }

  splitText() {
    if (text.length < firstHalfLength) {
      firsthalf = text;
      secondhalf = "";
    } else {
      firsthalf = text.substring(0, firstHalfLength);
      secondhalf = text.substring(firstHalfLength, text.length);
    }
    return Container(
      child: secondhalf.isEmpty
          ? SmallText(
              text: firsthalf,
            )
          : Obx(
              () => Column(
                children: [
                  SmallText(
                    text: controller.flag.isTrue
                        ? (firsthalf + "...")
                        : (firsthalf + secondhalf),
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          controller.flag.isTrue ? "show more" : "show less",
                          style: const TextStyle(color: AppColors.mainColor),
                        ),
                        controller.flag.isTrue
                            ? const Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.mainColor,
                              )
                            : const Icon(
                                Icons.arrow_drop_up,
                                color: AppColors.mainColor,
                              )
                      ],
                    ),
                    onTap: () {
                      controller.flagNotflag();
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
