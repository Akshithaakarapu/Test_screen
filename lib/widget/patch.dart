import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_screen/dashboard_Home.dart';

class Patch_page extends StatefulWidget {
  const Patch_page({Key? key}) : super(key: key);

  @override
  State<Patch_page> createState() => _Patch_pageState();
}

class _Patch_pageState extends State<Patch_page> {
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

  final productidcontroller = TextEditingController();
  final productController = TextEditingController();
  final descriptionController = TextEditingController();
  bool _loading = false;

  void performLogin() async {
    String productid = productidcontroller.text.trim();
    String product = productController.text.trim();
    String description = descriptionController.text.trim();

    FormData formData = FormData.fromMap({
      "product_name": product,
      "description": description,
      "image": MultipartFile.fromBytes(
        await insidePic!.readAsBytes(),
        filename: insidePic?.name,
      ),
    });

    setState(() {});
    Response response = await Dio().post(
        "http://jayanthi10.pythonanywhere.com/api/v1/add_products/",
        data: formData);

    if (response.statusCode == 200) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard();
      }));

      setState(() {
        _loading = true;
      });
    } else {
      print("wrong credentioal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor:Color.fromARGB(255, 244, 141, 6),
        //appBar: AppBar(),
        body: SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xffFC7508),
                    ),
                    InkWell(
                      onTap: () {
                        getImage();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFC7508),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                // height: double.infinity,
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 141, 6),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      topLeft: Radius.circular(100),
                    )),
                child: Image.asset(
                  'images/splash.png',
                  width: 200,
                  height: 200,
                ),
              ),

              //SizedBox(height: 25,),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(100),
                        // topRight: Radius.circular(50)
                      )),
                  child: Column(
                    children: [
                      TextField(
                        controller: productidcontroller,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xffFC7508),
                          ),
                          labelText: 'PRODUCT ID',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter productId',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        controller: productController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xffFC7508),
                          ),
                          labelText: 'PRODUCT NAME',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter product name',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        controller: descriptionController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xffFC7508),
                          ),
                          labelText: 'DESCRIPTION',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter description',
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (() {
                              performLogin();
                            }),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffFC7508) // Background color
                                ),
                            child: Text(
                              'Upload',
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                    ],
                  ),
                ),
              ),

              //  SizedBox(height: 10,),

              //     ElevatedButton(onPressed: (() {

              //  }),
              //  child: Text('Add product')),
            ],
          ),
        ),
      ]),
    ));
    // Scaffold(
    //  // appBar: AppBar(),
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
    //       child: Column(
    //         children: [
    //           Image.asset('images/splash.png',width: 200,height: 200,scale:0.8),
    //           Column(
    //                   children: [
    //                     TextField(
    //                     controller: productidcontroller,
    //                   decoration: InputDecoration(
    //                     prefixIcon: Icon(Icons.mail,color: Color(0xffFC7508),),
    //                     labelText: 'PRODUCT ID',
    //                     border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10)
    //                     ),
    //                     hintText: 'Enter productId',

    //                   ),
    //                 ),
    //                 SizedBox(height: 25,),
    //                 TextField(
    //                  controller: productController,
    //                   //obscureText: true,
    //                   decoration: InputDecoration(

    //                     prefixIcon: Icon(Icons.person,color: Color(0xffFC7508),),
    //                     labelText: 'PRODUCT NAME',
    //                     border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10)
    //                     ),
    //                     hintText: 'Enter product name',

    //                   ),
    //                 ),
    //                 SizedBox(height: 25,),
    //                 TextField(
    //                  controller: descriptionController,
    //                   //obscureText: true,
    //                   decoration: InputDecoration(

    //                     prefixIcon: Icon(Icons.person,color: Color(0xffFC7508),),
    //                     labelText: 'DESCRIPTION',
    //                     border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10)
    //                     ),
    //                     hintText: 'Enter description',

    //                   ),
    //                 ),
    //                 // Container(
    //                 //   child: image==null?Center(child: Text('Pick image'),),
    //                 // ),
    //                 // Container(
    //                 //   child: Center(child: Image.file(
    //                 //     File(image!.Path).absolute,
    //                 //     height: 100,
    //                 //     width: 100,
    //                 //     fit: BoxFit.cover,
    //                 //     )),
    //                 // ),

    //               SizedBox(height: 10,),

    //                 ElevatedButton(onPressed: (() {
    //                   getImage();

    //              }),
    //              child: Text('Add product')),
    //              SizedBox(height: 100,),

    //              ElevatedButton(onPressed: (() {

    //             performLogin();

    //              }),
    //              child: Text('Upload'))
    //         ],
    //       ),
    //         ]
    //       ),
    //     ),
    //   )
    // );
  }
}
