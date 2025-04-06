import 'package:flutter/material.dart';
import 'package:smart_farm_iot_app/models/sensor.dart';
import 'package:smart_farm_iot_app/services/api_smart_farm.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ShowSensorAll extends StatefulWidget {
  const ShowSensorAll({super.key});

  @override
  State<ShowSensorAll> createState() => _ShowSensorAllState();
}

class _ShowSensorAllState extends State<ShowSensorAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 115, 45),
        title: const Text(
          'Smart Farm IOT (All Sensor)',
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              'ข้อมูลเซ็นเซอร์ทั้งหมด',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 116, 58),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            FutureBuilder<List<Sensor>>(
                future: APISmartFarm().getSensorAll(),
                builder: (context, Snapshot) {
                  if (Snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (Snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Error: ${Snapshot.error}',
                        
                      ),
                    );
                  } else if (!Snapshot.hasData || Snapshot.data!.isEmpty) {
                    return Center(
                      child: Text(
                        'No data available',
                       
                      ),
                    );
                  } else {
                    final sensors = Snapshot.data!;
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 40.0,
                        ),
                        child: SfDataGrid(
                          //หัวตาราง
                          columns: [
                            GridColumn(
                              columnName: 'temperature',
                              label: Container(
                                padding: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: Text(
                                  'อุณหภูมิ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            GridColumn(
                              columnName: 'humidity',
                              label: Container(
                                padding: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: Text(
                                  'ความชื้น',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            GridColumn(
                              columnName: 'light',
                              label: Container(
                                padding: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: Text(
                                  'แสงสว่าง',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            GridColumn(
                              columnName: 'pm_value',
                              label: Container(
                                padding: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: Text(
                                  'ค่า PM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            
                          ],
                          //เนื้อหาของตาราง
                          source: SensorDataSource(sensors),
                        ),
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}

//-----------------------
class SensorDataSource extends DataGridSource {
  SensorDataSource(this.sensors);
 
  final List<Sensor> sensors;
 
  @override
  List<DataGridRow> get rows => sensors
      .map<DataGridRow>(
        (sensor) => DataGridRow(
          cells: [
            DataGridCell<String>(columnName: 'temperature', value: sensor.temperature),
            DataGridCell<String>(columnName: 'humidity', value: sensor.humidity),
            DataGridCell<String>(columnName: 'light', value: sensor.light),
            DataGridCell<String>(columnName: 'pm_value', value: sensor.pmValue),
          ],
        ),
      )
      .toList();
 
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      color: effectiveRows.indexOf(row) % 2 == 0 ? Colors.white : Color.fromARGB(255, 191, 253, 206),
      cells: row.getCells().map<Widget>((dataCell) {
        return Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            dataCell.value.toString(),
            style: TextStyle(
              fontSize: 12.0,
              color: Color.fromARGB(255, 86, 86, 86),
            ),
          ),
        );
      }).toList(),
    );
  }
}