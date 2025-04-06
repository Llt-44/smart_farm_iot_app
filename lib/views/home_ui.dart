import 'package:flutter/material.dart';
import 'package:smart_farm_iot_app/views/show_sensor_all_by_date_ui.dart';
import 'package:smart_farm_iot_app/views/show_sensor_all_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 115, 45),
        title: const Text(
          'Smart Farm IOT',
          style: TextStyle(
            color: Colors.white,),
          ),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:50.0,
            ),
            Image.asset(
              'assets/images/sflogo.png',
              width: 150,
            ),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed:( ){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context) => ShowSensorAll(), // Replace with your desired screen
                ));            
                },
              child:Text(
                'แสดงข้อมูลเซ็นเซอร์ทั้งหมด',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 84, 249, 47),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(15.0),
                ),
              ),
            SizedBox(
              height: 25.0,
            ),
          ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context) => ShowSensorAllByDate(), // Replace with your desired screen
                ));   
              },
                child: Text(
                'แสดงข้อมูลเซ็นเซอร์ทั้งหมด\nด้วยวันที่เลือก',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 26, 107),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.all(15.0),
                ),
              )  
          ],
        ),
      ),
      
        
      
    );
  }
}