import 'package:flutter/material.dart';
import 'package:temp/OtpPage.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

import 'package:temp/main.dart';
/*
class NumberLoginScreen extends StatelessWidget {
  final myController = TextEditingController();

  String phoneNumber;
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
                        child: new Container(),c
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
                            phoneNumber = text;
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

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OtpPage(phoneNumber: phoneNumber)));
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
  }
}

*/

void main() => runApp(LoginScreen());
final myController = TextEditingController();

String phoneNumber;
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

class NumberLoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String phoneNumber;
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Text(
            'Via Phone Number',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPhoneNumberRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        textAlign: TextAlign.start,
        autofocus: false,
        enabled: true,
        keyboardType: TextInputType.number,
        initialValue: "+91",
        style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
        onChanged: (text) {
          phoneNumber = text;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone_android,
              color: Colors.blueGrey,
            ),
            labelText: 'Phone Number'),
      ),
    );
  }

  Widget _buildSendOTPButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {
              var url =
                  "https://2factor.in/API/V1/7899a968-02d4-11eb-9fa5-0200cd936042/SMS/{phone_number}/{otp_val}";

              var phoneNumber = myController.text;
              var otp = getRandomNumber();
              url = url.replaceAll('{phone_number}', phoneNumber);
              url = url.replaceAll('{otp_val}', otp.toString());

              sendOTP(url);

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OtpPage(phoneNumber: phoneNumber)));
            },
            child: Text(
              "Send OTP",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildPhoneNumberRow(),
                _buildSendOTPButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
