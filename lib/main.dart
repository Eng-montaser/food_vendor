import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/provider/GetProvider.dart';
import 'package:food_vendor/ui/UserScreens/homePage.dart';
import 'package:food_vendor/ui/auth/login.dart';
import 'package:food_vendor/ui/intro/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'provider/AuthProvider.dart';
import 'provider/PostProvider.dart';
import 'provider/settings.dart';
import 'utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(EasyLocalization(
        supportedLocales: [Locale('ar', 'SA'), Locale('en', 'US')],
        path: 'assets/lang', // <-- change patch to your
        fallbackLocale: Locale('ar', 'SA'),
        saveLocale: true,
        //startLocale: Locale('ar', 'SA'),
        child: MultiProvider(providers: [
          ChangeNotifierProvider<Setting>(
            create: (_) => Setting(),
          ),
          ChangeNotifierProvider(
            create: (_) => AuthProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => GetProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => PostProvider(),
          ),
        ], child: MyApp()),
      )));
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Setting>(
        create: (BuildContext context) => Setting(),
        child: Consumer<Setting>(builder: (context, model, __) {
          model.checkLogin();
          //  model.changeLanguage(EasyLocalization.of(context).locale);
          return ScreenUtilInit(
            designSize: Size(480, 800),
            builder: () => MaterialApp(
              builder: BotToastInit(), //1. call BotToastInit
              navigatorObservers: [BotToastNavigatorObserver()],
              key: ValueKey<Locale>(context.locale),
              debugShowCheckedModeBanner: false,
              title: 'checkpoint',
              theme: ThemeData(
                fontFamily:
                    EasyLocalization.of(context).locale == Locale("en", "US")
                        ? GoogleFonts.salsa().fontFamily
                        : GoogleFonts.cairo().fontFamily,
                canvasColor: backgroundColor,
                //primarySwatch: Colors.blue,
              ),
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                EasyLocalization.of(context).delegate,
              ],

              localeResolutionCallback: (deviceLocale, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (locale.languageCode == deviceLocale.languageCode &&
                      locale.countryCode == deviceLocale.countryCode) {
                    return deviceLocale;
                  }
                }
                return supportedLocales.first;
              },
              initialRoute: 'login', //model.login?'main':'login',
              routes: {
                'splash': (context) => Splash(),
                'home': (context) => HomePage(),
                'login': (context) => LoginPage(),
              },
            ),
          );
        }));
  }
}
