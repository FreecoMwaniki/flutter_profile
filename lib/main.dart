import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'about.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //debugShowCheckedModeBanner -A boolean flag that controls whether to display the "debug" banner in the top-right corner of the app.
      debugShowCheckedModeBanner: false,
      title: 'My Profile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/about', page: () => AboutScreen()),
      ],
    );
  }
}
