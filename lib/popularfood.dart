import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_screen/ProductDetails.dart';
import 'package:test_screen/models/entries_API.dart';
import 'package:test_screen/widget/Popularfoods_ex.dart';

class Popularfood extends StatefulWidget {
  const Popularfood({ Key? key }) : super(key: key);

  @override
  State<Popularfood> createState() => _PopularfoodState();
}

class _PopularfoodState extends State<Popularfood> {
  List<String> images=[
  'images/apple.png',
  'images/apple.png',
  'images/dashimg1.png',
  'images/banana.png',
  'images/redberries.png',
  'images/apple.png',
  'images/apple.png',
  'images/apple.png',
  'images/dashimg1.png',
  'images/banana.png',
  'images/redberries.png',
  'images/apple.png',
  ];
  //List<String> images2=['images/redberries.png','images/banana.png','images/dashimg2.png','images/apple.png','images/dashimg1.png'];
  List<String> Tittle=[
  'Apples',
  'Apple',
  'Strawberry',
  'Banana',
  'Redberries',
  'Apple',
  'Apple',
  'Strawberry',
  'Banana',
  'Redberries',
  'Apple',
  'Redberries',
  ];
  //List<String> Tittle2=['Redberries','Banana','Cherries','Apple','Strawberry'];
  List<String> doller=[
  'Only \$20',
  'Only \$20',
  'Only \$10',
  'Only \$12',
  'Only \$20',
  'Only \$20',
  'Only \$20',
  'Only \$10',
  'Only \$12',
  'Only \$20',
  'Only \$20',
  'Only \$20',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
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
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 7, 7, 7),)))
                      ),
                      SizedBox(width: 80,),
                      //Image.asset('images/arrowimg.png'),
                      Text('Popular food',style: TextStyle(color: Color.fromARGB(255, 5, 5, 5),fontSize: 21,fontWeight: FontWeight.bold)),
                    ],
                   ),
                  list==null? CircularProgressIndicator():
                   Container(
                    height: 640,
                    child: GridView.builder(
              itemCount: list?.data!.length,
              shrinkWrap: true,           
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
                        childAspectRatio: 5/ 7,
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 14.0,
                        
                      ),
                      
                      physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
               return InkWell(
                 child: Popular_Foods(
                       images: 'http://jayanthi10.pythonanywhere.com${list!.data![index].image}',
                       Tittle: '${list!.data![index].productId}', 
                       doller: '${list!.data![index].productName}'),
                       onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                          return details(
                            productId: list!.data![index].productId,
                            
                          );
                         }));
                       } ,
               );
              }
          ),)]),
        ),
      )
      
    );
  }
}

// images: '${images}', Tittle: '${Tittle}', doller: '${doller}');