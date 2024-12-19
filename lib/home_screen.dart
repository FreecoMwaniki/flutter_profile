import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> skills = [
    {'icon': Icons.code, 'name': 'CyberSecurity'},
    {'icon': Icons.security, 'name': 'Cybersecurity Enthusiast'},
    {'icon': Icons.cloud, 'name': 'Cloud Computing'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          TextButton(
            onPressed: () => Get.toNamed('/about'),
            child: const Text('ABOUT', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              children: [
                Text(
                  'Freeco Mwaniki',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/Alfred.jpg'),
                ),
                SizedBox(height: 8),
                Text(
                  'Speciality: Cybersecurity Analyst',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'MY SKILLS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: skills.length,
              itemBuilder: (context, i) => ListTile(
                leading: Icon(skills[i]['icon']),
                title: Text(skills[i]['name']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
