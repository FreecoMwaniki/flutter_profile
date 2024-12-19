import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Freeco Mwaniki is a passionate Network Engineer, '
              'with experience in building networks and topologies.'
              ' He enjoys learning about cybersecurity and exploring cloud computing technologies.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
