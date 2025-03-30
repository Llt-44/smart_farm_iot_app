import 'package:flutter/material.dart';
import 'package:smart_farm_iot_app/views/home_ui.dart';

class SplashSreenUI extends StatefulWidget {
  const SplashSreenUI({super.key});

  @override
  State<SplashSreenUI> createState() => _SplashSreenUIState();
  
  }


class _SplashSreenUIState extends State<SplashSreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
    ()=> Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) => HomeUI()
      )
      )
      ); 
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 234, 169),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sflogo.png',
              width: 250,
            ),
            SizedBox(
              height: 40.0
              ),
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 105, 238, 53),
            ),
          ],
        ) ,
        ),
    );
  }
}