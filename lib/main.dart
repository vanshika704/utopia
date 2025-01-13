import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utopia/pages/Page2.dart';
import 'package:utopia/pages/page1.dart';
import 'package:utopia/pages/page3.dart';
import 'package:utopia/pages/splash.dart'; // Import GetX

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Define your routes
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Initial route
      getPages: [
        GetPage(name: '/splash', page: () => Splash()), // Splash screen route
        GetPage(name: '/home', page: () => Page1()), // Home screen route
         GetPage(name: '/Page2', page: () => Page2()),
          GetPage(name: '/Page3', page: () => VoiceButtonPage()),
      ],
    );
  }
}
