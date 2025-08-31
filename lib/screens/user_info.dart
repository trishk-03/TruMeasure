import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    // Scale factors
    final avatarRadius = width * 0.15; // 15% of screen width
    final iconSize = width * 0.18;
    final titleFontSize = width * 0.055;
    final subtitleFontSize = width * 0.04;
    final spacing = height * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            // Profile Avatar
            CircleAvatar(
              radius: avatarRadius,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person,
                  color: Colors.black87, size: iconSize),
            ),
            SizedBox(height: spacing),

            // User Info
            Text(
              "TruMeasure",
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: spacing * 0.3),
            Text(
              "TruMeasure@gmail.com",
              style: TextStyle(
                fontSize: subtitleFontSize,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: spacing * 1.2),

            // Profile Details Card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(width * 0.03),
                child: Column(
                  children: [
                    ListTile(
                      leading:
                      const Icon(Icons.phone, color: Colors.black),
                      title: Text("Phone",
                          style: TextStyle(fontSize: subtitleFontSize)),
                      subtitle: Text("+91 98765 43210",
                          style: TextStyle(fontSize: subtitleFontSize)),
                    ),
                    const Divider(),
                    ListTile(
                      leading:
                      const Icon(Icons.location_on, color: Colors.black),
                      title: Text("Address",
                          style: TextStyle(fontSize: subtitleFontSize)),
                      subtitle: Text("PSIT, Uttar Pradesh, India",
                          style: TextStyle(fontSize: subtitleFontSize)),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.info, color: Colors.black),
                      title: Text("About",
                          style: TextStyle(fontSize: subtitleFontSize)),
                      subtitle: Text("User detail",
                          style: TextStyle(fontSize: subtitleFontSize)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: spacing * 1.5),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue[900],
                      side: BorderSide(color: Colors.blue[900]!),
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.018,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      // Edit Action
                    },
                    icon: const Icon(Icons.edit),
                    label: Text("Edit",
                        style: TextStyle(fontSize: subtitleFontSize)),
                  ),
                ),
                SizedBox(width: width * 0.05),
                Expanded(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.018,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      // Logout Action
                    },
                    icon: const Icon(Icons.logout),
                    label: Text("Logout",
                        style: TextStyle(fontSize: subtitleFontSize)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
