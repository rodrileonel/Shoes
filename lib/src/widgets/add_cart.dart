import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/widgets.dart';


class AddCart extends StatelessWidget {

  final double price;

  const AddCart({Key key, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(200)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text('\$ $price', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            ButtonCart(texto: 'Add to cart',),
          ]
        ),
      ),
    );
  }
}