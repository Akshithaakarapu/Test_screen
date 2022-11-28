import 'package:flutter/material.dart';
import 'package:test_screen/dashboard_Home.dart';

class card2_page extends StatefulWidget {
  const card2_page({ Key? key }) : super(key: key);

  @override
  State<card2_page> createState() => _card2_pageState();
}

class _card2_pageState extends State<card2_page> {
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
                    "Item Deleted Successfully ",
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