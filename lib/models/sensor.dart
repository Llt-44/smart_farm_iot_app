class Sensor {
  int? id;
  String? temperature;
  String? humidity;
  String? light;
  String? pmValue;
  String? recordedDate;
  String? recordedTime;

  Sensor(
      {this.id,
      this.temperature,
      this.humidity,
      this.light,
      this.pmValue,
      this.recordedDate,
      this.recordedTime});

  Sensor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    temperature = json['temperature'];
    humidity = json['humidity'];
    light = json['light'];
    pmValue = json['pm_value'];
    recordedDate = json['recorded_date'];
    recordedTime = json['recorded_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['temperature'] = this.temperature;
    data['humidity'] = this.humidity;
    data['light'] = this.light;
    data['pm_value'] = this.pmValue;
    data['recorded_date'] = this.recordedDate;
    data['recorded_time'] = this.recordedTime;
    return data;
  }
}