import 'package:flutter/material.dart';
import 'package:test_screen/login.dart';

class details extends StatefulWidget {
  const details({ Key? key }) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(children: [
              Row( 
                children: [
                  Container(
                    height: 59,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xfff7f7f7),
                      ),
                    
                    child: Center(child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)))
                  ),
                  SizedBox(width: 80,),
                  Text('Cherries',style: TextStyle(color: Color(0xff121212),fontSize: 21,fontWeight: FontWeight.bold),),
                ],
              ),
              
              Image.asset('images/cherries.png'),
              SizedBox(height: 25,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [           
                Text('Best Cherries ',style: TextStyle(color: Color(0xff121212),fontSize: 21,fontWeight: FontWeight.bold),),
               Text('Ordered 500G + 500G',style: TextStyle(color: Color(0xff3d3d3d),fontSize: 14,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Text('About Product',style: TextStyle(color: Color(0xffFE6F00),fontSize: 16,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. \n\nExercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit',style: TextStyle(color: Color(0xff929292),fontSize: 14,fontWeight: FontWeight.bold),)
        
              ],),
              SizedBox(height:30 ,),
              Container(
                alignment: Alignment.center,
                width:380 ,
                height: 68,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Color(0xffF46A07)
                ),
                child: Text('Add to cart',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18,fontWeight: FontWeight.bold),
               ),
              ),
               ElevatedButton(
              child: const Text('Open route'),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return loginpage();
              }));
                // Navigate to second route when tapped.
              },
            ),
              
            ],),
          ),
        ),
      ),
    );
  }
}
