import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;
  const VerticalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName!)
                ? lightGrey.withOpacity(0.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName!) ||
                      menuController.isActive(itemName!),
                  child: Container(
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName!),
                    ),
                    if (menuController.isActive(itemName!))
                      Flexible(
                        child: CustomText(
                          text: itemName!,
                          color: dark,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName!,
                          color: menuController.isHovering(itemName!)
                              ? dark
                              : lightGrey,
                        ),
                      ),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
