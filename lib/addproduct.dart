
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_screen/dashboard.dart';


class Add_product extends StatefulWidget {
  const Add_product({ Key? key }) : super(key: key);

  @override
  State<Add_product> createState() => _Add_productState();
}

class _Add_productState extends State<Add_product> {

// File? image;
// final _picker = ImagePicker();
// bool showspinner=false;

// Future getImage() async{
//   final PickedFile=await _picker.pickImage(source: ImageSource.gallery,imageQuality: 80);
// }
// Setsate((){

// })}

 XFile? insidePic;
  String networkImage = "";
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
     setState(() {
      if (pickedFile != null) {
        insidePic = pickedFile;
        networkImage = "";
      } else {
        print('No image selected');
      }
    });
  }

  final productController= TextEditingController();
  final descriptionController=TextEditingController();
  bool _loading=false;

  void performLogin() async{

  String product=productController.text.trim();
  String description=descriptionController.text.trim();

  FormData formData=FormData.fromMap({

  "product_name":product,
  "description":description,
  "image": MultipartFile.fromBytes(
        await insidePic!.readAsBytes(),
        filename: insidePic?.name,
      ),

   });

  setState(() {
    
  });
  Response response=await Dio().post("http://jayanthi10.pythonanywhere.com/api/v1/add_products/",data: formData);

  
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
     // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                        children: [
                          TextField(
                          controller: productController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail,color: Color(0xffFC7508),),
                          labelText: 'PRODUCT',
                          border: OutlineInputBorder( 
                            borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: 'Enter productname',
                          
                        ),
                      ),
                      SizedBox(height: 25,),
                      TextField(
                        controller: descriptionController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          
                          prefixIcon: Icon(Icons.person,color: Color(0xffFC7508),),
                          labelText: 'DESCRIPTION',
                          border: OutlineInputBorder( 
                            borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: 'Enter description',
                          
                        ),
                      ),
                      // Container(
                      //   child: image==null?Center(child: Text('Pick image'),),
                      // ),
                      // Container(
                      //   child: Center(child: Image.file(
                      //     File(image!.Path).absolute,
                      //     height: 100,
                      //     width: 100,
                      //     fit: BoxFit.cover,
                      //     )),
                      // ),
                      
      
                    SizedBox(height: 10,),
      
                      ElevatedButton(onPressed: (() {
                         getImage();
                         
                     
                   }), 
                   child: Text('Add product')),
                   SizedBox(height: 200,),
      
                   ElevatedButton(onPressed: (() {
                       
                  performLogin();
                   
                   }), 
                   child: Text('Upload'))
            ],
          ),
              ),
            ]
          ),
        ),
      )
    );
  }
}