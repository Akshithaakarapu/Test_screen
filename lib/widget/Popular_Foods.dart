import 'package:flutter/material.dart';
class Popular_Foods extends StatelessWidget{
  const Popular_Foods ({required this.images,required this.Tittle,required this.doller});
  final String images;
  final String Tittle;
  final String doller;
  
  
  Widget build(BuildContext context){
    return Row( 
                      children: [
                        Container(
                          height: 203,
                          width: 154,
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
                                          child: Image.network(images),
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
                        
                      ],
                    );
  }
}