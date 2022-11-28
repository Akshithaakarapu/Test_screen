import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_screen/models/details_API.dart';
import 'package:test_screen/widget/cart.dart';

class Details extends StatefulWidget {
//
  const Details({
    Key? key,
    this.productId,
    this.productName,
    this.description,
    this.image,
  }) : super(key: key);
  final int? productId;
  final String? productName;
  final String? description;
  final String? image;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  ProductDetailsAip? details_model;

  void porductDetails() async {
    try {
      var responce = await Dio().get(
          "http://jayanthi10.pythonanywhere.com/api/v1/product_details/?product_id=${widget.productId}");
      setState(() {
        details_model = productDetailsAipFromJson(jsonEncode(responce.data));
  print("------here data${responce.data}");
       
      });
     
      
    } catch (e) {
      setState(() {});
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    // porductDetails();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child://details_model==null? CircularProgressIndicator():
             Column(
              children: [
                details_model==null? CircularProgressIndicator():
                 Text('${widget.productId}'),
               Text('${details_model!.description}'),

                // Row(
                //   children: [
                //     Container(
                //         height: 59,
                //         width: 50,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           color: Color(0xfff7f7f7),
                //         ),
                //         child: Center(
                //             child: InkWell(
                //                 onTap: () {
                //                   Navigator.pop(context);
                //                 },
                //                 child: Icon(Icons.arrow_back_ios)))),
                //     SizedBox(
                //       width: 80,
                //     ),
                //     Text(
                //       'Cherries',
                //       style: TextStyle(
                //           color: Color(0xff121212),
                //           fontSize: 21,
                //           fontWeight: FontWeight.bold),
                //     ),
                //   ],
                // ),

                // Image.network(
                //     'http://jayanthi10.pythonanywhere.com${details_model!.image}'),
                // SizedBox(
                //   height: 25,
                // ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       '${details_model!.productName}',
                //       style: TextStyle(
                //           color: Color(0xff121212),
                //           fontSize: 21,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     Text(
                //       '${details_model!.productId}',
                //       style: TextStyle(
                //           color: Color(0xff3d3d3d),
                //           fontSize: 14,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     SizedBox(
                //       height: 20,
                //     ),
                //     Text(
                //       'About Product',
                //       style: TextStyle(
                //           color: Color(0xffFE6F00),
                //           fontSize: 16,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     SizedBox(
                //       height: 20,
                //     ),
                //     //
                //     Text(
                //       '${details_model!.description}',
                //       style: TextStyle(
                //           color: Color(0xff929292),
                //           fontSize: 14,
                //           fontWeight: FontWeight.bold),
                //     )
                //   ],
                // ),
                // SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   alignment: Alignment.center,
                //   width: 380,
                //   height: 68,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: Color(0xffF46A07)),
                //   child: InkWell(
                //     child: Text(
                //       'Add to cart',
                //       style: TextStyle(
                //           color: Color(0xffFFFFFF),
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     onTap: () {
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (BuildContext context) {
                //         return Cart_page();
                //       }));
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
