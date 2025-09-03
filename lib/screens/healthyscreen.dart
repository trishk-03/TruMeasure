import 'package:flutter/material.dart';

class HealthyDevicesScreen extends StatelessWidget {
  const HealthyDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data (replace with real API data later)
    final List<Map<String, String>> healthyDevices = [
      {
        "device": "Device #001",
        "location": "Warehouse A",
        "lastCheck": "1:45 PM, Sep 3, 2025",
      },
      {
        "device": "Device #003",
        "location": "Factory Line 2",
        "lastCheck": "11:20 AM, Sep 2, 2025",
      },
      {
        "device": "Device #007",
        "location": "Storage Room",
        "lastCheck": "5:10 PM, Sep 1, 2025",
      },
      {
        "device": "Device #001",
        "location": "Warehouse A",
        "lastCheck": "1:45 PM, Sep 3, 2025",
      },
      {
        "device": "Device #003",
        "location": "Factory Line 2",
        "lastCheck": "11:20 AM, Sep 2, 2025",
      },
      {
        "device": "Device #007",
        "location": "Storage Room",
        "lastCheck": "5:10 PM, Sep 1, 2025",
      },      {
        "device": "Device #001",
        "location": "Warehouse A",
        "lastCheck": "1:45 PM, Sep 3, 2025",
      },
      {
        "device": "Device #003",
        "location": "Factory Line 2",
        "lastCheck": "11:20 AM, Sep 2, 2025",
      },
      {
        "device": "Device #007",
        "location": "Storage Room",
        "lastCheck": "5:10 PM, Sep 1, 2025",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Healthy Devices",style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.green[600],
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: healthyDevices.length,
          itemBuilder: (context, index) {
            final device = healthyDevices[index];
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 30,
                ),
                title: Text(
                  device["device"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location: ${device["location"]}"),
                    Text("Last Check: ${device["lastCheck"]}"),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              ),
            );
          },
        ),
      ),
    );
  }
}
