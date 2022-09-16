import 'package:flutter/material.dart';
import 'package:test_screen/login.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({ Key? key }) : super(key: key);

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatetohome(); 
  }
  navigatetohome()async{
    await Future.delayed(Duration(seconds: 2),() {});
     Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) =>loginpage()),
        );
    }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      //appBar: AppBar(),
      body: Center(child: (Image.asset('images/splash.png'))),
      
    );
  }
}