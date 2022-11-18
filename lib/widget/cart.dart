import 'package:flutter/material.dart';
import 'package:test_screen/dashboard.dart';
import 'package:test_screen/widget/dashboard_ex.dart';

class Cart_page extends StatelessWidget {
  const Cart_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            //decoration: BoxDecoration(color: Color(0xffFFFFFF)),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 86,
                  ),
                  InkWell(
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xff49be25),
                      size: 50,
                    ),
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Dashboard();
                      }));
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Item Add To Cart Successfully ",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFC7508),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    color: Color.fromARGB(0, 181, 181, 184),
                    child: InkWell(
                      child: Text(
                        "Go to dashboard ",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 88, 89, 90),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Dashboard();
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}