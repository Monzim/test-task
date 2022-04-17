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
      body: Stack(
        children: <Widget>[
          Center(child: Text(_locale!.homeScreenWelcome)),
          const Align(
            alignment: Alignment.bottomCenter,
            child: CBottomBar(),
          ),
        ],
      ),
    );
  }
}
