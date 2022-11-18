import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_screen/details.dart';

import 'package:test_screen/main.dart';
import 'package:test_screen/models/entries.dart';
import 'package:test_screen/popularfood.dart';
import 'package:test_screen/practices.dart';
import 'package:test_screen/widget/dashboard_new.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<dynamic> Tittle=[
  'Apples',
  'Redberries',
  'Banana',
  'Strawberry'
  ];
  List<dynamic> doller=[
  'Only \$20',
  'Only \$20',
  'Only \$20',
  'Only \$20'
  ];
  List<dynamic> images=[
  'images/apple.png',
  'images/imagesmall.png',
  'images/banana.png',
  'images/dashimg1.png'];

  List<dynamic> Tittle1=[
  'Banana',
  'Redberries',
  'Apple',
  'Strawberry',
  ];
  List<dynamic> doller1=[
  'Only \$20',
  'Only \$20',
  'Only \$20',
  'Only \$20'
  ];
  List<dynamic> images1=[
  'images/banana.png',
  'images/redberries.png',
  'images/apple.png',
  'images/dashimg1.png',
    ];


    ProductList? list;
 bool _loading= false;
void data() async{
  try{
    Response response= await Dio().get("http://jayanthi10.pythonanywhere.com/api/v1/list_products/");
    setState(() {
      print(".................${response.data}");
      list=productListFromJson(jsonEncode(response.data));
      _loading=true;
    });
  }
  catch(e){
    setState(() {
    _loading=true;
      
    });
    print(e);
  }
}
 

  @override
  void initState() {
    // TODO: implement initState
    data();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body:SingleChildScrollView(
       //scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
             // Text(" list count:${list!.products![index].productId}"),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                      height: 59,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff7f7f7),
                        ),                     
                      child: Image.asset('images/menuicon.png')
                    ),
                     Container(
                      height: 59,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff7f7f7),
                        ),                     
                      child: Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return MyHomePage();
                              }));
                          },
                          child: Icon(Icons.person)),
                      )
                    ),
                ],
              ),
              SizedBox(height: 15,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                              //obscureText: true,
                              decoration: InputDecoration(
                               prefixIcon: Icon(Icons.search,color: Color(0xff8F8F8F),),
                                //labelText: 'CONFIRM PASSWORD',
                                border: OutlineInputBorder( 
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                hintText: 'Search Something',
                              ),
                            ),
                  ),
                   Container(
                      height: 59,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff7f7f7),
                        ),
                      child: Center(child: Icon(Icons.tune))
                    ),
                ],
              ),
              SizedBox(height: 25,),
              Image.asset('images/bigimg.png'),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Foods',
                  style: TextStyle(color: Color(0xff121212),
                  fontSize: 21,fontWeight: FontWeight.bold)),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                        return Popularfood();
                                       }));
                                    },
                  child: Text('View All',
                  style: TextStyle(color: Color(0xff121212),
                  fontSize: 14,))),
                ],
              ),
              SizedBox(height: 15,),
              Container(
              height: 270,
              child: ListView.builder(
                  itemCount:list!.data!.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return dashboard_new(
                    images: 'http://jayanthi10.pythonanywhere.com${list!.data![index].image}',
                     Tittle: '${list!.data![index].productId}', 
                     doller: '${list!.data![index].productName}');
                  })
              ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Categories',
                     style: TextStyle(
                      color: Color(0xff121212),
                      fontSize: 21,
                      fontWeight: FontWeight.bold)),
                      Text('View All',style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                   ],
                 ),
                SizedBox(height: 15,),
                Container(
              height: 270,
              child: ListView.builder(
                  itemCount:images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return dashboard_new(
                       images: 'http://jayanthi10.pythonanywhere.com${list!.data![index].image}',
                     Tittle: '${list!.data![index].productId}', 
                     doller: '${list!.data![index].productName}');
                  })
              ),
              // ElevatedButton(onPressed: (() {
              //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
              //     return Practices();
              //    }));
              // }), 
              // child: Text('akshith'))
             ]
          ),
      ),
      )
    );
  }
}

