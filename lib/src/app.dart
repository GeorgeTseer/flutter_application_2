import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/home/article.dart';
import 'package:flutter_application_2/src/home/article_two.dart';
import 'package:flutter_application_2/src/home/article_home_two.dart';
import 'package:flutter_application_2/src/home/soundboard.dart';
import 'package:flutter_application_2/src/poll/poll.dart';
import 'package:flutter_application_2/src/settings/app_info.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home/article_five.dart';
import 'home/article_four.dart';
import 'home/article_home.dart';
import 'home/article_home_five.dart';
import 'home/article_home_four.dart';
import 'home/article_home_three.dart';
import 'home/article_three.dart';
import 'settings/privacy_policy.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';
import 'home/grid.dart';
import 'sample_feature/onboarding.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          initialRoute: '/onboard',

          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case '/article1':
                    return HomeArticleOne();
                  case '/article2':
                    return HomeArticleTwo();
                  case Poll.routeName:
                    return const Poll();
                  case GridViewPage.routeName:
                    return GridViewPage();
                  case '/article3':
                    return HomeArticleThree();
                  case '/article4':
                    return HomeArticleFour();
                  case '/article5':
                    return HomeArticleFive();
                  case '/articleOne':
                    return ArticleScreen();
                  case '/articleTwo':
                    return ArticleScreenTwo();
                  case '/articleThree':
                    return ArticleScreenThree();
                  case '/articleFour':
                    return ArticleScreenFour();
                  case '/articleFive':
                    return ArticleScreenFive();
                  case '/info':
                    return AppInfo();
                  case '/policy':
                    return Policy();
                  case Soundboard.routeName:
                    return Soundboard();
                  default:
                    return const OnboardWidget();
                }
              },
            );
          },
        );
      },
    );
  }
}
