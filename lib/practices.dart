import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'models/entries.dart';

class Practices extends StatefulWidget {
  const Practices({ Key? key }) : super(key: key);

  @override
  State<Practices> createState() => _PracticesState();
}

class _PracticesState extends State<Practices> {

  Testing? list;
 bool _loading= false;


void data() async{
  try{
    Response response= await Dio().get("https://api.publicapis.org/entries");
    setState(() {
      print(".................${response.data}");
      list=testingFromJson(jsonEncode(response.data));
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
      body: Column(
        children: [
          list==null?CircularProgressIndicator():
           Container(
                    height: 640,
                    child: GridView.builder(
              itemCount: list!.entries!.length,
              shrinkWrap: true,           
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
                        childAspectRatio: 5/7,
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 14.0, 
                      ),
                      physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text(" list count:${list?.count}"),
                    Text("iteam name:${list?.entries![index].category}"),
                 // Text("iteam name:${list?.entries![index].link}"),

                    ],
                );
              }
          ),)
          ]
          ),

        
      
    );
  }
}