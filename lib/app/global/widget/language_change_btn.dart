import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/app/global/global.dart';
import 'package:test_task/app/modules/initial/controllers/initial_controller.dart';
import 'package:test_task/l10n/local_provider.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InitialController _initialController = Get.find<InitialController>();

    return IconButton(
      splashRadius: 30.r,
      tooltip: AppLocalizations.of(context)!.language,
      icon: Text(
        LocaleSettings.isBangla(context) ? '🇧🇩' : '🇺🇸',
        style: TextStyle(
          fontSize: 20.sp,
        ),
      ),
      onPressed: () {
        _initialController.toggleLocale();
      },
    );
  }
}
