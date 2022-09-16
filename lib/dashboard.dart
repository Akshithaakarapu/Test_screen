import 'package:flutter/material.dart';

import 'package:test_screen/main.dart';
import 'package:test_screen/popularfood.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> Tittle=['Apples','Redberries'];
  List<String> doller=['Only \$20','Only \$20'];
  List<String> images=['images/apple.png','images/redberries.png',];
  @override
  Widget build(BuildContext context) {
    var images;
    return Scaffold(
      //appBar: AppBar(),
      body:SingleChildScrollView(
       //scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
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
                      
                      child: Center(child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return MyHomePage();
                            }));
                        },
                        child: Icon(Icons.person)))
                    ),
                ],
              ),
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
                  Text('Popular Foods',style: TextStyle(color: Color(0xff121212),fontSize: 21,fontWeight: FontWeight.bold)),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                        return Popularfood();
                                       }));
                                    },
                                    child: Text('View All',style: TextStyle(color: Color(0xff121212),fontSize: 14,))),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                  height: 680,
                  child: ListView.builder(
            itemCount: images.length,
            shrinkWrap: true,           
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
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
                                    Text(Tittle[index],style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
                                      Text(doller[index],style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Center(
                                        child: Container(
                                          child: Image.asset(images[index]),
                                        ),
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
              // Row( 
              //     children: [
              //       Container(
              //         height: 203,
              //         width: 157,
              //         decoration: BoxDecoration(
              //           border: Border.all(
              //           color: Color.fromARGB(255, 205, 205, 204), //                   <--- border color
              //            width: 1,
              //           ),
              //           borderRadius: BorderRadius.circular(15),
              //         color: Color(0xffFFFFFF),
              //         ),
              //         child: Column(
              //           children: [
              //             Container(
              //               //alignment: Alignment.topLeft,
              //               child: Padding(
              //                 padding: const EdgeInsets.only(left: 10,top: 10),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text('Strawberry',style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
              //                       Text('Only \$10',style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
              //                       SizedBox(
              //                         height: 15,
              //                       ),
              //                       Center(
              //                         child: Container(
              //                           child: Image.asset('images/dashimg1.png'),
              //                         ),
              //                       ),
              //                       SizedBox(height: 13,),
              //                       Align(
              //                         alignment: Alignment.bottomRight,
              //                         child: Container(
              //                                           height: 30,
              //                                           width: 30,
              //                                           decoration: BoxDecoration(
              //                                             borderRadius: BorderRadius.circular(8),
              //                                             color: Color(0xffF47014),
              //                                             ),
              //                                           child: Image.asset('images/pluseicon.png')
              //                                ),
              //                       ),
                                  
              //                   ],
              //                 ),
              //               ),
                            
              //             )
              //           ],
              //         ),
              //       ),
              //       SizedBox(width: 5,),
              //       Container(
              //         height: 203,
              //         width: 157,
              //         decoration: BoxDecoration(
              //           border: Border.all(
              //           color: Color.fromARGB(255, 205, 205, 204), //                   <--- border color
              //            width: 1,
              //           ),
              //           borderRadius: BorderRadius.circular(15),
              //         color: Color(0xffFFFFFF),
              //         ),
                      
              //         child: Column(
              //           children: [
              //             Container(
              //               //alignment: Alignment.topLeft,
              //               child: Padding(
              //                 padding: const EdgeInsets.only(left: 10,top: 10),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text('Cherries',style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
              //                       Text('Only \$12',style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
              //                       SizedBox(
              //                         height: 15,
              //                       ),
              //                       Center(
              //                         child: Container(
              //                           child: InkWell(
              //                           onTap: () {
              //                             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
              //                               return details();
              //                              }));
              //                           },
              //                             child: Image.asset('images/dashimg2.png')),
              //                         ),
              //                       ),
              //                       SizedBox(height: 13,),
              //                       Align(
              //                         alignment: Alignment.bottomRight,
              //                         child: Container(
              //                                           height: 30,
              //                                           width: 30,
              //                                           decoration: BoxDecoration(
              //                                             borderRadius: BorderRadius.circular(8),
              //                                             color: Color(0xffF47014),
              //                                             ),
                                                        
              //                                           child: Image.asset('images/pluseicon.png')
              //                                         ),
              //                       ),
                                  
              //                   ],
              //                 ),
              //               ),
                            
              //             )
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
                SizedBox(height: 15,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories',style: TextStyle(color: Color(0xff121212),fontSize: 21,fontWeight: FontWeight.bold)),
                                  Text('View All',style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                ],
              ),
              SizedBox(height: 20,),
              Row( 
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
                                  Text('Apples',style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
                                    Text('Only \$20',style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                      child: Container(
                                        child: Image.asset('images/apple.png'),
                                      ),
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
                    SizedBox(width: 5,),
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
                                  Text('Red Berries',style: TextStyle(color: Color(0xff121212),fontSize: 14,fontWeight: FontWeight.bold),),
                                    Text('Only \$40',style: TextStyle(color: Color(0xff121212),fontSize: 14,)),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                      child: Container(
                                        child: Image.asset('images/redberries.png'),
                                      ),
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
                    )
                  ],
                ),
                
            ] 
        );
            }
                  )
          ),
            ]
          ),
      ),
      )
    );
  }
}