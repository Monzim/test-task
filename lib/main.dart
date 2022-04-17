import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_task/app/modules/initial/controllers/initial_controller.dart';
import 'package:test_task/app/theme/text_them.dart';

import 'app/modules/initial/bindings/initial_binding.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InitialController _initialController = Get.put(InitialController());

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: ((BuildContext context) => GetMaterialApp(
            onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
            theme: ThemeData(
              primarySwatch: Colors.orange,
              textTheme: CustomTextTheme.textThemeLight,
            ),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            locale: _initialController.localeProvider.value,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            initialBinding: InitialBinding(),
          )),
    );
  }
}
