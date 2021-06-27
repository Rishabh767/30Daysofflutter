import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          Text("Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                (const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0)),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "UserName", hintText: "Enter the Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password", hintText: "Enter your Password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(child: Text("Login"),
                , onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
