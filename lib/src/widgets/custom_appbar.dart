import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final String text;

  const CustomAppBar({ @required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.symmetric(horizontal:20),
        width: double.infinity,
        child: Row(
          children: [
            Text(text,style:TextStyle(fontSize: 25,fontWeight: FontWeight.w700)),
            Spacer(),
            Icon(Icons.search, size: 30,),
          ],
        ),
      ),
    );
  }
}