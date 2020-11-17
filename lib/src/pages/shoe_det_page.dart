import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/models/shoe_model.dart';
import 'package:shoes/src/widgets/widgets.dart';

class ShoeDetail extends StatelessWidget {
  const ShoeDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Hero(
                    tag: 'shoe',
                    child: ShoeImage(tallas: false,)
                  ),
                  ShoeDesc(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      Text('\$ 180', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                      Bounce(
                        delay: Duration(milliseconds: 500),
                        from: 12,
                        child: ButtonCart(texto: 'Buy Now',)
                      )
                    ]
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(left:120,child:_ColorButtons(color: Color(0xff3B525D),index: 4,)),
                              Positioned(left:80,child:_ColorButtons(color: Color(0xff4795F3),index: 3,)),
                              Positioned(left:40,child:_ColorButtons(color: Color(0xffFBB301),index: 2,)),
                              _ColorButtons(color: Color(0xffCDDB41),index:1),
                            ],
                          ),
                        ),
                        ButtonCart(texto: 'More related items',color: Colors.orange[300],size: 30,),
                      ],
                    ),
                  ),
                  SizedBox(height:50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      _Option(icon:Icons.favorite,state: true,),
                      _Option(icon:Icons.shopping_cart),
                      _Option(icon:Icons.settings),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class _Option extends StatelessWidget {

  final IconData icon;
  final bool state;

  const _Option({Key key, @required this.icon, this.state=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color:Colors.white,
        shape:BoxShape.circle,
        boxShadow:[BoxShadow(color: Colors.grey[400],blurRadius: 20)]
      ),
      child: Icon(icon,color: (state)?Colors.pink:Colors.grey,),
    );
  }
}

class _ColorButtons extends StatelessWidget {

  final Color color;
  final int index;

  const _ColorButtons({@required this.color, this.index}) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        switch(index){
          case 4: Provider.of<ShoeModel>(context,listen: false).image = 'assets/negro.png'; break;
          case 3: Provider.of<ShoeModel>(context,listen: false).image = 'assets/azul.png'; break;
          case 2: Provider.of<ShoeModel>(context,listen: false).image = 'assets/amarillo.png'; break;
          case 1: Provider.of<ShoeModel>(context,listen: false).image = 'assets/verde.png'; break;
        }
      },
      child: FadeInLeft(
        delay: Duration(milliseconds: this.index*100),
        child: Container(
          width:45,height:45,
          decoration:BoxDecoration(
            color:color,
            shape:BoxShape.circle
          )
        ),
      ),
    );
  }
}