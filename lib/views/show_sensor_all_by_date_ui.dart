import 'package:flutter/material.dart';

class ShowSensorAllByDate extends StatefulWidget {
  const ShowSensorAllByDate({super.key});

  @override
  State<ShowSensorAllByDate> createState() => _ShowSensorAllByDateState();
}

class _ShowSensorAllByDateState extends State<ShowSensorAllByDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFF01732D),
        title: const Text(
          'Smart Farm IOT (All Sensor By Date)',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
