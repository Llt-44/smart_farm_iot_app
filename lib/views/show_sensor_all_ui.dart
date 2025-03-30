import 'package:flutter/material.dart';

class ShowSensorAll extends StatefulWidget {
  const ShowSensorAll({super.key});

  @override
  State<ShowSensorAll> createState() => _ShowSensorAllState();
}

class _ShowSensorAllState extends State<ShowSensorAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 115, 45),
        title: const Text(
          'Smart Farm IOT (All Sensor)',
          style: TextStyle(
            color: Colors.white,),
          ),
        centerTitle: true,

      ),
    );
  }
}