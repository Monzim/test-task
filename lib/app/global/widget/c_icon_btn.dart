import 'package:flutter/material.dart';
import 'package:test_task/app/global/global.dart';

class CIconButton extends StatelessWidget {
  const CIconButton({
    Key? key,
    this.title,
    this.icon,
    required this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  final String? title;
  final IconData? icon;
  final VoidCallback onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 80.r,
      borderRadius: BorderRadius.circular(40.r),
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: const Alignment(-.01, 0),
              child: Icon(
                icon ?? FontAwesomeIcons.info,
                color: isSelected ? Colors.orange : const Color(0xff9b9ba1),
                size: 32,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              title ?? 'Add Title',
              style: TextStyle(
                  color: isSelected ? Colors.orange : const Color(0xff9b9ba1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
