import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Size deviceSize=MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey,
      child: Stack(
        children: [
          // _headSection(Colors.black,),
          _headSection(),
          _listBills()
        ],
      ),
    );
  }

  _headSection() {
    return Container(
      height: 300,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageController(),
          _buttonImageContainer(),
        ],
      ),
    );
  }

  _mainBackground() {
    return Positioned(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("images/background.png"))),
    ));
  }

  _curveImageController() {
    return Positioned(
        left: 0,
        right: -2,
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/curve.png"))),
        ));
  }

  _buttonImageContainer() {
    return Positioned(
        // left: 10,
        right: 50,
        bottom: 0,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    offset: Offset(0, 2),
                    color: Color(0XFF11324d).withOpacity(0))
              ],
              // color: Color(0XFF11324d).withOpacity(0.2),
              image: DecorationImage(image: AssetImage('images/lines.png'))),
        ));
  }

  _listBills() {
    return Positioned(
        top: 320,
        left:0,
        right:0,
        bottom: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder:(_,index){
              return Container(
                margin: EdgeInsets.only(top: 20,right: 20),
              width: MediaQuery.of(context).size.width - 20,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 1),
                      blurRadius: 20.0,
                      spreadRadius: 10)
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(top: 10, left: 10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/brand1.png')),
                                border: Border.all(width: 5, color: Colors.green),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dhiraj Subedi',
                                style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'ID: 984585823',
                                style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    
                                
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Select',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "\$1248.00",
                            style: TextStyle(
                                fontSize: 14, decoration: TextDecoration.none),
                          ),
                          Text(
                            "due in 3",
                            style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                color: AppColor.idColor),
                          )
                        ],
                      ),
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 10,
                          decoration: BoxDecoration(
                            color: AppColor.halfOval,
                            borderRadius: BorderRadius.circular(30)
                          ),
                        )
                    ],
                  )
                ],
              ),
            );
            }
            
          ),
        )
        );
  }
}
