import 'package:flutter/material.dart';
import 'package:temp/home_screen.dart';
import 'package:flutter/cupertino.dart';

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
          title: Text('Search Talents Across You'),
          backgroundColor: Color(0xFFFF1744)),
      body: Center(
          child: RaisedButton(
        child: Text("Creators for FilmMaking"),
        onPressed: () {
          final act = CupertinoActionSheet(
            title: Text("Make others grow,which makes you grow"),
            message: Text("What do you prefer"),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text("Actors"),
                onPressed: () {
                  print("you wanted good actors,right!");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Music Directors"),
                onPressed: () {
                  print("you wanted good Music Directors,iss it!");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Cinematographer"),
                onPressed: () {
                  print("you wanted good Cinematographers");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Writers"),
                onPressed: () {
                  print("you wanted good Writers,iss it!");
                },
              ),
              CupertinoActionSheetAction(
                child: Text("Other Technicians for FilmMaking."),
                onPressed: () {
                  print("WoW,you wanted technicians for making a film.");
                },
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text("cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          );
          showCupertinoModalPopup(
              context: context, builder: (BuildContext context) => act);
        },
      )),
    );
  }
}
