import 'package:flutter/material.dart';
import 'package:test_screen/details.dart';
import 'package:test_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Spalsh(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
        child: Column(
          children: [
               Row(
                children: [
                  Container(
                    width: 50,
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff7f7f7),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: InkWell( 
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 7, 7, 7),)),
                    )
                  ),
                  SizedBox(width: 80,),
                  //Image.asset('images/arrowimg.png'),
                  Text('Settings',style: TextStyle(color: Color.fromARGB(255, 5, 5, 5),fontSize: 21,fontWeight: FontWeight.bold)),
                ],
               ),
                  //SizedBox(height: 100,),
               Column(                
                children: [
                  Image.asset('images/manimg.png',width: 170,height: 170,),
                  Text('A.AKSHITH',style: TextStyle(color: Color(0xff121212),fontSize: 21,fontWeight: FontWeight.bold)),
                  Text('9959901862',style: TextStyle(color: Color(0xff1C1C1C),fontSize: 17,fontWeight: FontWeight.normal)),
                  SizedBox(height: 20,),
                  Text('-----------------------------------------------------------------------')
                ],
               ),
               SizedBox(height: 30,),
               Row(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Image.asset('images/proicon1.png'),
                  ),
                  SizedBox(width: 25,),
                  Text('My Orders',style: TextStyle(color: Color(0xff1C1C1C),fontSize: 18,fontWeight: FontWeight.normal))
                ],
               ),
                SizedBox(height: 10,),
                Row(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                    ),
                    child: //Image.asset('images/proicon1.png'),
                    Icon(Icons.fact_check,color: Color(0xffF47014),)
                  ),
                  SizedBox(width: 25,),
                  Text('Terms of Use',style: TextStyle(color: Color(0xff1C1C1C),fontSize: 18,fontWeight: FontWeight.normal))
                ],
               ),
                SizedBox(height: 10,),
                Row(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Image.asset('images/proicon3.png'),
                  ),
                  SizedBox(width: 25,),
                  Text('Privacy Policy',style: TextStyle(color: Color(0xff1C1C1C),fontSize: 18,fontWeight: FontWeight.normal))
                ],
               ),
                SizedBox(height: 10,),
                Row(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Image.asset('images/proicon1.png'),
                  ),
                  SizedBox(width: 25,),
                  Text('About',style: TextStyle(color: Color(0xff1C1C1C),fontSize: 18,fontWeight: FontWeight.normal))
                ],
               ),
               SizedBox(height: 10,),
                Row(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Image.asset('images/proicon5.png'),
                  ),
                  SizedBox(width: 25,),
                  Text('Log Out',style: TextStyle(color: Color(0xff1C1C1C),fontSize: 18 ,fontWeight: FontWeight.normal))
                ],
               ),
                
          ],
        ),
      ),
      
    );
  }
}