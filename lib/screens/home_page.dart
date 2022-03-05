import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child: Stack(
        children: [
          // _headSection(Colors.black,),
          _headSection()
          
        ],
      ),
    );
  }

  _headSection( ){
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


  _mainBackground(){
    return Positioned(child: Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(
          "images/background.png"
        ))
      ),
    ));
  }

  _curveImageController(){
    return  Positioned(
      left: 0,
      right: -2,
      bottom: 0,

      child: Container(
      height: MediaQuery.of(context).size.height*0.1,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(
          "images/curve.png"
        ))
      ),
    )
    );
  }

  _buttonImageContainer(){
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
            color: Color(0XFF11324d).withOpacity(0)
          )
        ],
        // color: Color(0XFF11324d).withOpacity(0.2),
        image: DecorationImage(
         
          image: AssetImage(
            
          'images/lines.png'
        ))
      ),

    ));
  }

}