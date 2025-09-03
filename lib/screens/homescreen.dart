import 'package:flutter/material.dart';
import 'package:sih_25058/screens/alertscreen.dart';
import 'package:sih_25058/screens/healthyscreen.dart';
import 'package:sih_25058/screens/totaldevicesscreen.dart';
import 'package:sih_25058/screens/user_info.dart';
import 'package:sih_25058/ui_helper/widgets.dart';
import 'package:sih_25058/screens/registration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery sizes
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],

      //  APPBAR
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          elevation: 4,
          backgroundColor: Colors.blue[900],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: const Text(
            "Dashboard",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          actions: [
            // Notifications
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications_active, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AlertsScreen()),
                  );
                },
              ),
            ),

            // Profile
            Container(
              margin: const EdgeInsets.only(right: 12, left: 6),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: IconButton(
                  icon: const Icon(Icons.person, color: Colors.blue, size: 22),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfileScreen()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),


      //  BODY
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- WELCOME HEADER ---
            Text(
              "Hello, Admin 👋",
              style: TextStyle(
                fontSize: width * 0.07,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Welcome to Dashboard ",
              style: TextStyle(
                fontSize: width * 0.04,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: height * 0.03),

            // --- SEARCH BAR ---
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(12),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black12,
            //         blurRadius: 6,
            //         offset: const Offset(0, 3),
            //       ),
            //     ],
            //   ),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: "Search devices...",
            //       border: InputBorder.none,
            //       icon: Icon(Icons.search, color: Colors.grey[600]),
            //     ),
            //   ),
            // ),
            // SizedBox(height: height * 0.03),

            // --- STATS SECTION (Responsive Grid) ---
            GridView.count(
              crossAxisCount: width < 600 ? 2 : 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                GestureDetector(child: buildStatCard("Devices", "12", Icons.devices, Colors.blue, width),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TotalDevicesScreen()));
                },),
                GestureDetector(child: buildStatCard("Healthy", "9", Icons.verified, Colors.green, width), 
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthyDevicesScreen()));
                },),
                GestureDetector(child: buildStatCard("Alerts", "3", Icons.warning_amber, Colors.red, width), onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertsScreen()));
                },),
                GestureDetector(child: buildStatCard("New Registration", "+", Icons.add_business_sharp, Colors.orange, width),
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                  },),
              ],
            ),
            SizedBox(height: height * 0.03),

            // --- DEVICE LIST SECTION ---
            Text(
              "Devices",
              style: TextStyle(
                fontSize: width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.015),
            buildDeviceTile("Device #001", "Location: Warehouse A", true, width),
            buildDeviceTile("Device #002", "Location: Factory Line 3", false, width),
            buildDeviceTile("Device #003", "Location: Retail Store", true, width),
          ],
        ),
      ),
    );
  }
}
