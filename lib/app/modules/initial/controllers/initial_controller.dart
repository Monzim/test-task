import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';

class InitialController extends GetxController {
  late Rx<Locale> localeProvider;

  final active = [
    true.obs,
    false.obs,
    false.obs,
    false.obs,
  ];

  @override
  void onInit() {
    localeProvider = AppLocalizations.supportedLocales.first.obs;

    super.onInit();
  }

  activeButton(int index) {
    for (var element in active) {
      element(false);
    }
    active[index](true);
  }

  void toggleLocale() {
    final _local = localeProvider.value;
    if (_local == AppLocalizations.supportedLocales.first) {
      localeProvider.value = AppLocalizations.supportedLocales.last;
      Get.updateLocale(localeProvider.value);
    } else {
      localeProvider.value = AppLocalizations.supportedLocales.first;
      Get.updateLocale(localeProvider.value);
    }
  }
}
