import 'dart:math';

import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Head or Tail",
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int flipNumber = 1;
  changeFlip(){
    setState(() {
      flipNumber=Random().nextInt(2)+1;
      if(flipNumber==1){
        print('head');
        
        

      }
      else{
        print('tail');
      }
    
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Head or Tail"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(height:20),
        Center(child: Image.asset("assets/$flipNumber.jpg",height:250,width:250,)),
        SizedBox(height:70),
        MaterialButton(
          onPressed:changeFlip,
          color: Colors.blue,
          child: Text("Flip",style: TextStyle(color: Colors.white),),
        ),
        SizedBox(height:70),
      
    
      ],),
      
    );
  }
}