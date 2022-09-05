import 'package:flutter/material.dart';
import 'package:furniture_app/constants/app_colors.dart';
import 'package:furniture_app/ui/views/home/home_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
import 'config/app.locator.dart';
import 'config/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.dmSansTextTheme()
            .apply(displayColor: AppColors.textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      home: const HomeView(),
    );
  }
}
