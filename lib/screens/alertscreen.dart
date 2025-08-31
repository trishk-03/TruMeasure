import 'package:flutter/material.dart';
import 'package:sih_25058/ui_helper/widgets.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recent Alerts"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            buildAlertTile(
                "Device #002", "Tampering detected at Factory Line 3",
                "2 mins ago", width),
            buildAlertTile("Device #007", "Unusual activity at Retail Store",
                "15 mins ago", width),
            buildAlertTile(
                "Device #005", "Tampering detected at Warehouse B",
                "1 hr ago", width),
            buildAlertTile(
                "Device #010", "Possible interference detected",
                "3 hrs ago", width),
            buildAlertTile(
                "Device #012", "Multiple failed authentication attempts",
                "6 hrs ago", width),
          ],
        ),
      ),
    );
  }
}
