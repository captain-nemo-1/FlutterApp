import 'package:flutter/material.dart';
import 'package:flutter_simpleapp/utils/routes.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";

  moveToHome(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Hello $name!", //returns greetings with username
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.indigo[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username", //placeholder
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true, //hides typed characters
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        onPressed: () {
                          Navigator.pushNamed(context,
                              MyRoutes.homeRoute); //provides access to homepage
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
