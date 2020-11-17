import 'package:flutter/material.dart';
import 'package:shoes/src/helpers/helpers.dart';

import 'package:shoes/src/widgets/widgets.dart';


class ShoePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    changeStatusDark();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CustomAppBar(text: 'For You'),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children:[
                      Hero(
                        tag: 'shoe',
                        child: ShoeImage()
                      ),
                      SizedBox(height:15),
                      ShoeDesc(
                        title: 'Nike Air Max 720',
                        description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(bottom: 30, right: 0, left: 0, child: AddCart(price:180)),
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //floatingActionButton: AddCart(),
    );
  }
}