import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_screen/dashboard_Home.dart';
import 'package:test_screen/main.dart';
import 'package:test_screen/signup.dart';

class loginpage extends StatefulWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

final usernameController= TextEditingController();
final passwordController=TextEditingController();
bool _loading=false;

void performLogin() async{

  String username=usernameController.text.trim();
  String password=passwordController.text.trim();

FormData formData=FormData.fromMap({

"username":username,
"password":password

});

  setState(() {
    
  });
  Response response=await Dio().post("http://jayanthi10.pythonanywhere.com/api/v1/login/",data: formData);

  
  if(response.statusCode==200){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
      return Dashboard();}));

       setState(() {
    _loading=true;
  });
  }


  else{
    print("wrong credentioal");
  }

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      //appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column( 
              children: [
                Image.asset('images/loginlogo.png'),
                SizedBox(height: 20,),
                Text('Welcome Back',style: TextStyle(color: Color(0xffFC7508  ),fontSize: 28,fontWeight: FontWeight.bold)),
                SizedBox(height: 15,),
                 
                  
                Text('Login to continue',style: TextStyle(color: Color(0xff6C7178),fontSize: 16,)),
                 SizedBox(height: 55,),
                 Column(
                  children: [
                    TextField(
                      controller: usernameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail,color: Color(0xffFC7508),),
                    labelText: 'EMAIL',
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Enter mail',
                    
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  controller: passwordController,
                  //obscureText: true,
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(Icons.person,color: Color(0xffFC7508),),
                    labelText: 'PASSWORD',
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Enter password',
                    
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password?',style: TextStyle(color: Color(0xffFC7508  ),fontSize: 14,fontWeight: FontWeight.bold,))
                  ),SizedBox(height: 35,),
                   Container(
                  alignment: Alignment.center,
                  width:336 ,
                  height: 56,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF46A07)
                  ),
                  child: InkWell(
                    onTap: () {
                      performLogin();
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {  
                      //   return Dashboard();
                      // }));
                    },
                    child: Text('LOGIN',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18,fontWeight: FontWeight.bold),
                                 ),
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Don’t have account?',style: TextStyle(color: Color(0xff6C7178  ),fontSize: 14,)),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                      return Signuppage();
                                      }));
                                  },
                                  child: Text('Create a new account',style: TextStyle(color: Color(0xffFC7508),fontSize: 14,)))
        
                ],)
                  ],
                 ),
          //        ElevatedButton(
          //   child: const Text('Open route'),
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
          //       return signuppage();
          //      }));
          //     // Navigate to second route when tapped.
          //   },
          // ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}