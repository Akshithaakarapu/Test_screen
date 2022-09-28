import 'package:flutter/material.dart';
import 'package:test_screen/login.dart';

import '../details.dart';
class dashboard_new extends StatelessWidget{
  const dashboard_new ({ required this.images, required this.doller, required this.Tittle});
  final String images;
  final String doller;
  final String Tittle;

  Widget build ( BuildContext context){
    return  Row(
                      children: [
                        Container(
                          height: 203,
                          width: 157,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 205, 205, 204), //                   <--- border color
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Column(
                            children: [
                              Container(
                                //alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(Tittle,style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
                                      Text(doller,style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                       // margin: EdgeInsets.only(),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                              return details();
                                             }));
                                          },
                                          child: Image.asset(images)),
                                      ),
                                      SizedBox(height: 13,),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xffF47014),
                                            ),
                                            child: Image.asset('images/pluseicon.png')
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                      ],
                    );
  }
  }
  class Category extends StatelessWidget{
    const Category ({ required this.images1,required this.doller1, required this.Tittle1});
    final String images1;
    final String doller1;
    final String Tittle1;

    Widget build(BuildContext context){
      return Row(
                      children: [
                        Container(
                          height: 203,
                          width: 157,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 205, 205, 204), //                   <--- border color
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Column(
                            children: [
                              Container(
                                //alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(Tittle1,style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
                                      Text(doller1,style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        child: Image.asset(images1),
                                      ),
                                      SizedBox(height: 13,),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: Color(0xffF47014),
                                            ),
                                            child: Image.asset('images/pluseicon.png')
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,)
                      ],
                    );
    }

  }
