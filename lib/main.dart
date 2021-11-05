

import 'package:whats/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();



  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', ''), Locale('ar', '')],
        path: 'lang', // <-- change the path of the translation files
        fallbackLocale: Locale('en', ''),
        child: MyApp()

    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          supportedLocales: context.supportedLocales,

          home: HomeScreen())
    ;
  }
}
