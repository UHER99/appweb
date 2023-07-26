import 'package:flutter/material.dart';

import 'myHomePage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Container(
            height: h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.png"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'images/logo.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                Text('2CW',style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: 'Enter Name ',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: () => {
                    Navigator.push(
              context,
               MaterialPageRoute(builder:(context) =>myHomePage()))
                  },
                  child: Container(
                    width: w,
                    height: h * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(child: Text('SIGN IN')),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'Or Use other account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: w,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(children: [
                    Icon(
                      Icons.facebook_rounded,
                      size: 45,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: w,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Image.asset(
                          'images/goo.png',
                          width: 35,
                          height: 35,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Login with Google",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

