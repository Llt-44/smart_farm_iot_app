import 'package:dio/dio.dart';
import 'package:smart_farm_iot_app/constants/baseurl_constant.dart';
import 'package:smart_farm_iot_app/models/sensor.dart';

class APISmartFarm {
  //สร้าง instance ของ Dio เพื่อใช้ติดต่อ API ที่ server
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseurl,
    ),
  );
  //ส่วน Method ต่างๆ ที่ใช้ในการติดต่อ API
  //Methodเรียกใช้ API สำหรับดึงข้อมูลเซ็นเซอร์ทั้งหมด

  //Methodเรียกใช้ API สำหรับดึงข้อมูลเซ็นเซอร์ทั้งหมด
  Future<List<Sensor>> getSensorAll() async {
    try {
      final response = await dio.get(
        '/smartfarmservice/sensors');
        if (response.statusCode == 200) {
          final responseData = response.data;
          return (responseData as List)
              .map((sensor) => Sensor.fromJson(sensor))
              .toList();
        }
        else{
          return [];
        }
    } catch (e) {
      print("error:  $e");
      return [];
    }
  }
//Methodเรียกใช้ API สำหรับดึงข้อมูลเซ็นเซอร์ทั้งหมดตามวันที่ที่เลือก
  


}