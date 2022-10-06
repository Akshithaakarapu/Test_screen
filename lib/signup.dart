import 'package:flutter/material.dart';
import 'package:test_screen/dashboard.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({ Key? key }) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                   onTap: () {
                     Navigator.pop(context);
                   },
                   child: Icon(Icons.keyboard_backspace,color: Color(0xffFC7508),)),
                ),
             
              SizedBox(height: 15,),
              Text('Create Account',style: TextStyle(color: Color(0xffFC7508  ),fontSize: 28,fontWeight: FontWeight.bold)),
                          SizedBox(height: 20,),
      
                      Text('Create your New Journey',style: TextStyle(color: Color(0xff6C7178  ),fontSize: 16,fontWeight: FontWeight.bold)),
                      SizedBox(height: 35,),
                      TextField(
                      decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person,color: Color(0xffFC7508),),
                        labelText: 'NAME',
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Enter name',
                        
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                        
                         prefixIcon: Icon(Icons.mail,color: Color(0xffFC7508),),
                        labelText: 'EMAIL',
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Enter Email',
                        
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_iphone,color: Color(0xffFC7508),),
                        labelText: 'PHONE NUMBER',
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Enter phone number',
                        
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        
                        prefixIcon: Icon(Icons.lock,color: Color(0xffFC7508),),
                        labelText: 'PASSWORD',
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Enter password',
                        
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                       prefixIcon: Icon(Icons.lock,color: Color(0xffFC7508),),
                        labelText: 'CONFIRM PASSWORD',
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: 'Enter CONFIRM PASSWORD',
                        
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      alignment: Alignment.center,
                      width:336 ,
                      height: 56,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF46A07)
                      ),
                      child: Text('CREATE ACCOUNT',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16,fontWeight: FontWeight.bold),
                     ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Already have a account?',style: TextStyle(color: Color(0xff6C7178  ),fontSize: 14,)),
                      Text('Login',style: TextStyle(color: Color(0xffFC7508),fontSize: 14,))
                    ],),
                   
        
            ],),
          ),
        ),
      ),
    );
  }
}