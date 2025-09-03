import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sih_25058/screens/Login_screenn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //  screen width & height
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon / Logo
            Container(
              padding: EdgeInsets.all(width * 0.05), // responsive padding
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: width * 0.05, // responsive blur
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              child: Icon(
                Icons.balance,
                color: Colors.blue,
                size: width * 0.2, // responsive icon size
              ),
            ),
            SizedBox(height: height * 0.04),

            // App Name
            Text(
              "TruMeasure",
              style: TextStyle(
                color: Colors.white,
                fontSize: width * 0.07, // responsive font
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: height * 0.015),

            // Tagline
            Text(
              "Secure • Detect • Trust",
              style: TextStyle(
                color: Colors.white70,
                fontSize: width * 0.04, // responsive font
                letterSpacing: 1,
              ),
            ),

            SizedBox(height: height * 0.06),
          ],
        ),
      ),
    );
  }
}
