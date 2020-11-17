import 'package:flutter/material.dart';

class ButtonCart extends StatelessWidget {

  final String texto;
  final Color color;
  final double size;

  const ButtonCart({this.texto,this.color = Colors.orange,this.size=50});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      alignment: Alignment.center,
      //margin: EdgeInsets.symmetric(vertical: 23),
      padding: EdgeInsets.symmetric(horizontal:30),
      //width: MediaQuery.of(context).size.width*0.3,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text('$texto',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

    );
  }
}