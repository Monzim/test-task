import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: const CAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _locale!.homeScreenWelcome,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              _locale.availablefeatures,
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              _locale.features,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            const SizedBox(height: 10),
            SelectableText(
              '${_locale.telegram}: @monzim \n${_locale.twitter}: @monzim',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color.fromARGB(255, 61, 90, 114)),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CBottomBar(),
    );
  }
}
