import 'package:flutter/material.dart';
import 'package:temp/home_screen.dart';
import 'signup.dart';
import 'password.dart';
import 'phoneNumber.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('A warm welcome'), backgroundColor: Color(0xFFE91E63)),
        key: scaffoldKey,
        body: new Container(
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.orange[600],
                Colors.orange[500],
                Colors.orange[300],
                Colors.orange[200],
              ],
            ),
          ), //LinearGradient

          child: Center(
            child: new ListView(
              children: <Widget>[
                Image.asset(
                  "assets/splash.png",
                  height: 250,
                ), //Image.asset
                SizedBox(
                  height: 20.0,
                ),

                Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        // validator:(value){
                        //   if (value.isEmpty){
                        //     return"Please enter the user name";
                        //   }else if(value.length>8){
                        //     return "Username should not exceed 8 characters!";
                        //   }

                        //   },
                        decoration: InputDecoration(
                          icon: Icon(Icons.account_circle, color: Colors.white),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        // obscureText: true,
                        // validator: (value){
                        //   if (value.isEmpty){
                        //     return"Please enter the user Password";
                        //   }
                        // },

                        decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: Colors.white),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ], //<Widget>[]
                  ), //column
                ), //Form

                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Password()));
                  },
                  child: Text(
                    "Forget Password ?",
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NumberLoginScreen()));
                  },
                  child: Text(
                    "Login with your phone number",
                  ),
                ),

                Container(
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
                  child: ButtonTheme(
                    buttonColor: Colors.white10,
                    height: 50.0,
                    minWidth: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text("Form Validated Successfully"),
                          ));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                        // else{
                        //    scaffoldKey.currentState.showSnackBar(SnackBar(
                        //     content: Text("Error in Form"),
                        //     ));

                        // }
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //RaisedButt
                  ), //ButtonTheme
                ), //Container
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  'Do you want to create a new account?',
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                  textColor: Colors.blue,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                ),
              ], //Widget
            ), // new Column
          ), //Center
        )); //Container //Scaffold
  }
}
