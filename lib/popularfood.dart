import 'package:flutter/material.dart';
import 'package:test_screen/widget/Popular_Foods.dart';

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
  //List<String> doller2=['Only \$10','Only \$40','Only \$40','Only \$8','Only \$20'];



  
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
                      Text('Settings',style: TextStyle(color: Color.fromARGB(255, 5, 5, 5),fontSize: 21,fontWeight: FontWeight.bold)),
                    ],
                   ),
                   Container(
                    height: 640,
                    child: GridView.builder(
              itemCount: images.length,
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
                return Popular_Foods(images: '${images}', Tittle: '${Tittle}', doller: '${doller}');
              }
          ),)]),
        ),
      )
      
    );
  }
}