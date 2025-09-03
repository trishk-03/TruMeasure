import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data (replace with real API data later)
    final List<Map<String, String>> alerts = [
      {
        "device": "Device #002",
        "location": "Factory Line 3",
        "time": "2:30 PM, Sep 3, 2025",
      },
      {
        "device": "Device #005",
        "location": "Warehouse B",
        "time": "10:12 AM, Sep 2, 2025",
      },
      {
        "device": "Device #008",
        "location": "Storage Area",
        "time": "8:45 PM, Sep 1, 2025",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Alerts"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: alerts.length,
          itemBuilder: (context, index) {
            final alert = alerts[index];
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 30,
                ),
                title: Text(
                  alert["device"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location: ${alert["location"]}"),
                    Text("Time: ${alert["time"]}"),
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
