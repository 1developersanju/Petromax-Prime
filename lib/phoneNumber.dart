import 'package:flutter/material.dart';
import 'package:temp/OtpPage.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

import 'package:temp/main.dart';

class NumberLoginScreen extends StatelessWidget {
  final myController = TextEditingController();

  String value;
  Future<http.Response> sendOTP(url) {
    print("Sending otp..");
    return http.get(url);
  }

  int getRandomNumber() {
    random(min, max) {
      var rn = new Random();
      return min + rn.nextInt(max - min);
    }

    var d = random(100000, 999999);
    return d;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            title: Text('A warm welcome'),
            backgroundColor: Color(0xFFE91E63)),
        backgroundColor: Colors.orange[400],
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Image.asset(
              "assets/splash.png",
              height: 250,
            ), //Image.asset
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 20.0, right: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: new Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: new TextFormField(
                          textAlign: TextAlign.center,
                          autofocus: false,
                          enabled: false,
                          initialValue: "+91",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        flex: 3,
                      ),
                      Flexible(
                        child: new Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: new TextFormField(
                          controller: myController,
                          textAlign: TextAlign.start,
                          autofocus: false,
                          enabled: true,
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            value = text;
                          },
                          textInputAction: TextInputAction.done,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        flex: 9,
                      ),
                      Flexible(
                        child: new Container(),
                        flex: 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                    child: new Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 0.4, 0.7, 0.9],
                          colors: [
                            Colors.orange[400],
                            Colors.orange[500],
                            Colors.orange[500],
                            Colors.orange[400],
                          ],
                        ), //LinearGradient
                      ), //BoxDecoration
                      child: new RaisedButton(
                        onPressed: () {
                          var url =
                              "https://2factor.in/API/V1/7899a968-02d4-11eb-9fa5-0200cd936042/SMS/{phone_number}/{otp_val}";
                          var phoneNumber = myController.text;
                          var otp = getRandomNumber();
                          url = url.replaceAll('{phone_number}', phoneNumber);
                          url = url.replaceAll('{otp_val}', otp.toString());
                          sendOTP(url);
                          // return showDialog(
                          //   context: context,
                          //   builder: (context) {
                          //     return AlertDialog(
                          //       // Retrieve the text the that user has entered by using the
                          //       // TextEditingController.
                          //       content: Text(url),
                          //     );
                          //   },
                          // );

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpPage(value: value)));
                        },
                        child: Text("send OTP"),
                        textColor: Colors.white,
                        color: Colors.red,
                      ),
                    ),
                  )
                ])
          ],
        ));
    // TODO: implement build
  }
}
