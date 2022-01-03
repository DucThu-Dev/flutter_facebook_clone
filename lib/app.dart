import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/presentations/main_tab_controller.dart';
import 'package:flutter_facebook_clone/themes/app_theme_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants.dart';
import 'generated/l10n.dart';
import 'themes/fallback_localization_delegate.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackLocalizationDelegate(),
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: themeData(),
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: const MainTabController(),
    );
  }
}
