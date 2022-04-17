import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

import '../controllers/initial_controller.dart';

class CBottomBar extends GetView<InitialController> {
  const CBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // height: 70.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 20.w),
              CIconButton(
                title: _locale!.home,
                onPressed: () {
                  controller.activeButton(0);

                  Get.offAllNamed(Routes.HOME);
                },
                icon: Icons.home,
                isSelected: controller.active[0].value,
              ),
              SizedBox(width: 15.w),
              Obx(() => CIconButton(
                    title: _locale.explore,
                    onPressed: () {
                      controller.activeButton(1);
                      Get.toNamed(Routes.EXPLORE);
                    },
                    icon: Icons.explore,
                    isSelected: controller.active[1].value,
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: FloatingActionButton(
              onPressed: () {
                controller.activeButton(1);
              },
              tooltip: _locale.add,
              elevation: 2,
              backgroundColor: const Color(0xff040415),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              CIconButton(
                title: _locale.inbox,
                onPressed: () {
                  controller.activeButton(2);
                },
                icon: Icons.inbox,
                isSelected: controller.active[2].value,
              ),
              SizedBox(width: 15.w),
              CIconButton(
                title: _locale.shop,
                onPressed: () {
                  controller.activeButton(3);
                  Get.toNamed(Routes.SHOP);
                },
                icon: Icons.shop,
                isSelected: controller.active[3].value,
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),
    );
  }
}
