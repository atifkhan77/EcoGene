import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothDevice {
  final String name;
  final String id;
  bool isSelected;

  BluetoothDevice(
      {required this.name, required this.id, required String deviceId})
      : isSelected = false;

  String get deviceId => id;
}

class BluetoothScanPage extends StatefulWidget {
  @override
  _BluetoothScanPageState createState() => _BluetoothScanPageState();
}

class _BluetoothScanPageState extends State<BluetoothScanPage> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<BluetoothDevice> devices = [];

  @override
  void initState() {
    super.initState();
    startScan();
  }

  startScan() {
    flutterBlue.startScan(timeout: Duration(seconds: 4));
    flutterBlue.scanResults.listen((results) {
      for (ScanResult result in results) {
        BluetoothDevice device = BluetoothDevice(
            name: result.device.name ??
                'Unknown', // Provide a default name if the device name is null
            id: result.device.id.toString(),
            deviceId: result.device.id.toString());
        if (!devices.any((d) => d.deviceId == device.deviceId)) {
          setState(() {
            devices.add(device);
          });
        }
      }
    });
  }

  void _scanForDevices() {
    startScan();
  }

  void _showPairedDevices() {
    // Implement logic to retrieve paired devices here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Devices'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: _scanForDevices,
                child: Text('Scan for Devices'),
              ),
              TextButton(
                onPressed: _showPairedDevices,
                child: Text('Paired Devices'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  value: devices[index].isSelected,
                  onChanged: (value) {
                    setState(() {
                      devices[index].isSelected = value!;
                    });
                  },
                  title: Text(devices[index].name),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                // Handle "Connect" button press here
              },
              child: Text('Connect'),
            ),
          ),
        ],
      ),
    );
  }
}
