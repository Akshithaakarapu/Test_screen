import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_screen/dashboard_Home.dart';
import 'package:test_screen/models/entries_API.dart';
import 'package:test_screen/widget/cart2.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//     );
//   }
// }

class Delete_Product extends StatefulWidget {
  @override
  _Delete_ProductState createState() => _Delete_ProductState();
}

class _Delete_ProductState extends State<Delete_Product> {
  final product_idController = TextEditingController();

  bool _isHidden = true;

  //final imageController = TextEditingController();

  bool _loading = false;

  ProductList? popularfood_model;
  void formDelete() async {
    String product_id = product_idController.text.trim();

    //String image = imageController.text.trim();

    FormData formData = FormData.fromMap({
      "product_id": product_id,
    });

    setState(() {});

    var responce = await Dio().delete(
        'http://jayanthi10.pythonanywhere.com/api/v1/delete_product/',
        data: formData);

    if (responce.statusCode == 200) {
      print('successfully deleted the product');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));

      setState(() {
        _loading = true;
      });
    } else {
      print(" delete product ");
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
          padding: const EdgeInsets.only(top: 10),
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
                        controller: product_idController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xffFC7508),
                          ),
                          labelText: 'PRODUCT ID',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Enter product id',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (() {
                              formDelete();
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                                return card2_page();
                               }));

                              //formDelete();
                            }),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffFC7508) // Background color
                                ),
                            child: Text(
                              'Delete',
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
    //   resizeToAvoidBottomInset: false,
    //   body: Column(
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.symmetric(
    //             // horizontal: 18.0,
    //             // vertical: 16.0,
    //             ),
    //         child: Container(
    //           decoration: BoxDecoration(color: Color(0xffFFFFFF)),
    //           child: Column(children: [
    //             SizedBox(
    //               height: 86,
    //             ),

    //             SizedBox(
    //               height: 14,
    //             ),
    //             Center(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Text(
    //                     "Product id",
    //                     style: TextStyle(
    //                       decoration: TextDecoration.none,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.w700,
    //                       color: Color(0xff000000),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                   SizedBox(
    //                     width: 336,
    //                     height: 60,
    //                     child: TextFormField(
    //                       controller: product_idController,
    //                       decoration: InputDecoration(
    //                         labelStyle: TextStyle(
    //                             fontSize: 18,
    //                             fontWeight: FontWeight.w500,
    //                             color: Color(0xff6C7178)),
    //                         border: OutlineInputBorder(),
    //                         focusedBorder: OutlineInputBorder(
    //                             borderSide: BorderSide(
    //                                 color: Color(0xff262632), width: 1.0)),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(
    //               height: 42,
    //             ),
    //             ElevatedButton(
    //                 onPressed: (() {
    //                   formDelete();
    //                 }),
    //                 child: Text('DELETE'))
    //           ]),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
