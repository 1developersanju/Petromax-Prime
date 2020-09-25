import 'package:flutter/material.dart';
import 'main.dart';
//import 'firstpage.dart';
import 'package:temp/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Entertine,Engage and Enjoy'),
            backgroundColor: Color(0xFFE91E63)),
        key: scaffoldKey,
        body: new Container(
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.blue[600],
                Colors.red[500],
                Colors.pink[300],
                Colors.blue[200],
              ],
            ),
          ), //LinearGradient

          child: Center(
            child: new ListView(
              children: <Widget>[
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
                        // validator: (value){
                        //   if (value.isEmpty){
                        //     return"Please enter your Email id";
                        //   }
                        // },

                        decoration: InputDecoration(
                          icon: Icon(Icons.contact_mail, color: Colors.white),
                          hintText: "Email id",
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: true,
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
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        // validator: (value){
                        //   if (value.isEmpty){
                        //     return"Please confirm the Password";
                        //   }
                        // },

                        decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: Colors.white),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ], //<Widget>[]
                  ), //column
                ), //Form

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.4, 0.7, 0.9],
                      colors: [
                        Colors.pink[800],
                        Colors.pink[500],
                        Colors.pink[500],
                        Colors.pink[800]
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
                        } else {
                          scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text("Error in Form"),
                          ));
                        }
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //RaisedButton
                  ), //ButtonTheme
                ), //Container
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  'Alrady have an account?',
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                  textColor: Colors.blue,
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ], //Widget
            ), // new Column
          ), //Center
        )); //Container //Scaffold
  }
}
