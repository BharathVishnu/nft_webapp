import 'package:nft_webapp/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF94FDFD), Color(0xFF005A5E)],
          ),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(1.2, Text("Let's sign you in.", 
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
            SizedBox(height: 30,),
            FadeAnimation(1.5, Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF5C5F65)),
                        hintText: "Email or Phone number"
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                    ),
                    child: TextField(
                      obscureText: !isPasswordVisible,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFF5C5F65)),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: Icon(Icons.remove_red_eye, color: Color(0xFF5C5F65),)),
                        hintText: "Wallet Address"
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SizedBox(height: 60,),
            SizedBox(height: 20,),
            FadeAnimation(1.8, Center(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.black,
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16),)),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
