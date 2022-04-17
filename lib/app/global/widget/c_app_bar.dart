import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/app/global/global.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 45.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45.h,
              width: 300.w,
              alignment: const Alignment(-1, 0),
              decoration: BoxDecoration(
                color: const Color(0xffF4F5F7),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      tooltip:
                          MaterialLocalizations.of(context).searchFieldLabel,
                      splashRadius: 30.r,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.search,
                        color: Color(0xff95969e),
                      )),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 200,
                    height: 45.h,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: _locale!.searchhint,
                        hintStyle: TextStyle(
                          color: const Color(0xff95969e),
                          fontSize: 16.sp,
                        ),
                        labelStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          color: const Color(0xff95969e),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 5.w),
            const LanguageButton()
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
