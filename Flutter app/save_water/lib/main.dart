import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';
import 'screens/alerts/alert_details_screen.dart';
import 'screens/alerts/alerts_screen.dart';
import 'screens/base/base_screen.dart';
import 'screens/fields/fields_screen.dart';
import 'screens/news/news_screen.dart';
import 'screens/pumps_remote/pumps_remote_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/stats/stats_screen.dart';
import 'screens/weather/weather_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            title: 'Save Water',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/SplashScreen',
            routes: {
              '/SplashScreen': (context) => const SplashScreen(),
              '/BaseScreen': (context) => const BaseScreen(),
              '/WeatherScreen': (context) => const WeatherScreen(),
              '/NewsScreen': (context) => const NewsScreen(),
              '/FieldsScreen': (context) => const FieldsScreen(),
              '/StatsScreen': (context) => const StatsScreen(),
              '/AlertDetailsScreen': (context) => const AlertDetailsScreen(),
              '/AlertsScreen': (context) => const AlertsScreen(),
              '/PumpsRemoteScreen': (context) => const PumpsRemoteScreen(),
            },
          );
        });
  }
}
