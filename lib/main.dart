import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm_iot_app/views/splash_screen_ui.dart';

void main() {
  runApp(
    SmartFarmIOTApp()
  );
}

class SmartFarmIOTApp extends StatefulWidget {
  const SmartFarmIOTApp({super.key});

  @override
  State<SmartFarmIOTApp> createState() => _SmartFarmIOTAppState();
}

class _SmartFarmIOTAppState extends State<SmartFarmIOTApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashSreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}