import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';
import 'package:test_task/l10n/local_provider.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('TestTask'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _locale!.appTitle,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () => controller.initialController.toggleLocale(),
                child: Text('Locale'))
          ],
        ),
      ),
    );
  }
}
