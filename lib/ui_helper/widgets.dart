//  Stat Card
import 'package:flutter/material.dart';

Widget buildStatCard(String title, String value, IconData icon, Color color, double width) {
  return Container(
    padding: EdgeInsets.all(width * 0.04),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 6, offset: const Offset(0, 3)),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: width * 0.1, color: color),
        SizedBox(height: width * 0.02),
        Text(
          value,
          style: TextStyle(
            fontSize: width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: width * 0.01),
        Text(
          title,
          style: TextStyle(fontSize: width * 0.04, color: Colors.grey[600]),
        ),
      ],
    ),
  );
}

// Alert Tile
Widget buildAlertTile(String device, String message, String time, double width) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 2,
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      leading: Icon(Icons.warning_amber, color: Colors.red, size: width * 0.08),
      title: Text(device, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      trailing: Text(
        time,
        style: TextStyle(color: Colors.grey[600], fontSize: width * 0.035),
      ),
    ),
  );
}

//  Device Tile
Widget buildDeviceTile(String name, String location, bool isHealthy, double width) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 3,
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      leading: Icon(
        isHealthy ? Icons.check_circle : Icons.error,
        color: isHealthy ? Colors.green : Colors.red,
        size: width * 0.08,
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(location),
      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {},
    ),
  );
}




