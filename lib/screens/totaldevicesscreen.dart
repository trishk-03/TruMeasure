import 'package:flutter/material.dart';

class TotalDevicesScreen extends StatelessWidget {
  const TotalDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data (replace with real API data later)
    final List<Map<String, dynamic>> devices = [
      {
        "device": "Device #001",
        "location": "Warehouse A",
        "status": "healthy",
      },
      {
        "device": "Device #002",
        "location": "Factory Line 3",
        "status": "alert",
      },
      {
        "device": "Device #003",
        "location": "Factory Line 2",
        "status": "healthy",
      },
      {
        "device": "Device #004",
        "location": "Storage Area",
        "status": "alert",
      },

      {
        "device": "Device #005",
        "location": "Warehouse A",
        "status": "healthy",
      },
      {
        "device": "Device #006",
        "location": "Factory Line 3",
        "status": "alert",
      },
      {
        "device": "Device #007",
        "location": "Factory Line 2",
        "status": "healthy",
      },
      {
        "device": "Device #008",
        "location": "Storage Area",
        "status": "alert",
      },

      {
        "device": "Device #009",
        "location": "Warehouse A",
        "status": "healthy",
      },
      {
        "device": "Device #010",
        "location": "Factory Line 3",
        "status": "alert",
      },
      {
        "device": "Device #011",
        "location": "Factory Line 2",
        "status": "healthy",
      },
      {
        "device": "Device #012",
        "location": "Storage Area",
        "status": "alert",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("All Devices",style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, index) {
            final device = devices[index];
            final bool isHealthy = device["status"] == "healthy";

            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  isHealthy ? Icons.check_circle : Icons.error,
                  color: isHealthy ? Colors.green : Colors.red,
                  size: 30,
                ),
                title: Text(
                  device["device"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Location: ${device["location"]}"),
                trailing: Icon(
                  Icons.circle,
                  color: isHealthy ? Colors.green : Colors.red,
                  size: 14,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
