import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

class CBottomBar extends StatelessWidget {
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
                onPressed: () => Get.offAllNamed(Routes.HOME),
                icon: Icons.home,
              ),
              SizedBox(width: 15.w),
              CIconButton(
                title: _locale.explore,
                onPressed: () => Get.toNamed(Routes.EXPLORE),
                icon: Icons.explore,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: FloatingActionButton(
              onPressed: () {},
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
                onPressed: () {},
                icon: Icons.inbox,
              ),
              SizedBox(width: 15.w),
              CIconButton(
                title: _locale.shop,
                onPressed: () {},
                icon: Icons.shop,
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),
    );
  }
}
