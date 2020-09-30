import 'package:flutter/material.dart';
import 'main.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          title: Text('Change your password here'),
          backgroundColor: Color(0xFFFF1744)),
      body: Center(
        child: Text(" Sorry we dont have any option to chainge your password!"),
      ),
    );
  }
}
