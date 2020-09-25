import 'package:flutter/material.dart';
import 'package:temp/home_screen.dart';

class ViralVirus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          title: Text(''),
          backgroundColor: Color(0xFFFF1744)),
      body: Center(
        child: Text("This page is still in process"),
      ),
    );
  }
}
