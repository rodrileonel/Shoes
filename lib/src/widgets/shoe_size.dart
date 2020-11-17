import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/helpers/helpers.dart';
import 'package:shoes/src/models/shoe_model.dart';
 
class ShoeImage extends StatelessWidget {

  final bool tallas;

  const ShoeImage({this.tallas = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      //constraints: BoxConstraints(minHeight: 0,maxHeight: 480),
      height: 480,
      margin: EdgeInsets.symmetric(horizontal:(tallas)?20:0),
      padding: EdgeInsets.only(bottom:30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF4D259),
        borderRadius:BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              if(this.tallas){
                changeStatusLight();
                Navigator.pushNamed(context, 'detail');
                //Navigator.push(context, MaterialPageRoute(builder: (_) => ShoeDetail()));
              }
              else{
                changeStatusDark();
                Navigator.pop(context);
              }
            },
            child: _ShoeWithShadow()
          ),
          (tallas) ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Talla(talla: '7',),
              _Talla(talla: '7.5',),
              _Talla(talla: '8',),
              _Talla(talla: '8.5',),
              _Talla(talla: '9',),
              _Talla(talla: '9.5',),
            ],
          ):SizedBox(height: 0,),
        ],
      ),
    );
  }
}

class _Talla extends StatelessWidget {

  final String talla;

  const _Talla({@required this.talla});

  @override
  Widget build(BuildContext context) {
    final selected = Provider.of<ShoeModel>(context).talla;
    return GestureDetector(
      onTap: () {
        Provider.of<ShoeModel>(context,listen: false).talla = this.talla;
      },
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        child: (this.talla != selected)?Text(talla,style:TextStyle(color: Color(0xffEDA504),fontWeight:FontWeight.bold,fontSize: 15))
          :Text(talla,style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15)),
        decoration: (this.talla != selected) ? BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(10),
        ): BoxDecoration(
          color: Color(0xffEDA300),
          borderRadius:BorderRadius.circular(10),
          boxShadow: [BoxShadow(color:Color(0xffFFA300),blurRadius: 10,offset: Offset(0,5))]
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final image = Provider.of<ShoeModel>(context).image;
    return Container(
      padding: EdgeInsets.all(40),
      child: Stack(
        children:[
          Positioned(
            bottom: 0,
            right: 0,
            child: _ShoeShadow(),
          ),
          Image(image: AssetImage(image),height: 300,width: 300,)
        ]
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 250,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [BoxShadow(color:Color(0xffEDA300),blurRadius: 40)]
        ),
      ),
    );
  }
}