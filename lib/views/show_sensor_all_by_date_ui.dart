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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 115, 45),
        title: const Text(
          'Smart Farm IOT (All Sensor By Date)',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
