import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

class ShowItemWidget extends StatelessWidget {
  const ShowItemWidget({
    Key? key,
    required this.name,
    required this.address,
    required this.avaterUrl,
    required this.onFollow,
    required this.imageUrl,
    required this.onOkay,
    required this.cacheManager,
    this.showCustomBarier = false,
    this.customBarierColor,
    this.curtomBarierOnTapToCancel = false,
  }) : super(key: key);

  final String name, address, imageUrl, avaterUrl;
  final VoidCallback onOkay, onFollow;
  final bool showCustomBarier, curtomBarierOnTapToCancel;
  final Color? customBarierColor;
  final CacheManager cacheManager;

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);

    return GestureDetector(
      onTap: curtomBarierOnTapToCancel ? () => Get.back() : null,
      child: Container(
        decoration: showCustomBarier
            ? BoxDecoration(
                color: customBarierColor ??
                    const Color(0x00000000).withOpacity(0.5),
                border: Border.all(
                  width: 2.w,
                ),
              )
            : null,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: SizedBox(
            width: 300.w,
            height: 375.h,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              elevation: 10,
              content: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 32.w,
                              height: 32.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  image: DecorationImage(
                                      image: NetworkImage(avaterUrl),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 5.w),
                            SizedBox(
                              width: 80.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name.toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff172B4D)),
                                  ),
                                  Text(
                                    address,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xff040415)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xfffef6f4),
                              shadowColor: Colors.transparent,
                              minimumSize: Size(90.w, 35.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                            ),
                            icon: const Icon(
                              FontAwesomeIcons.userPlus,
                              size: 16,
                              color: Colors.orange,
                            ),
                            onPressed: onFollow,
                            label: Text(
                              _locale!.follow,
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.orange,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 234.w,
                      height: 234.w,
                      child: CacheImageWidget(
                        imageUrl: imageUrl,
                        cacheManager: cacheManager,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: onOkay,
                      child: Text(_locale.viewPost),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize: Size(235.w, 45.h),
                        primary: const Color(0xffF4F5F7),
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
