import 'package:flutter/material.dart';

class ShoeDesc extends StatelessWidget {

  final String title;
  final String description;

  const ShoeDesc({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:40,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(this.title, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height:10),
          Text(this.description, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,height: 1.5),),
        ]
      ),
    );
  }
}