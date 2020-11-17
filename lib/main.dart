import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/models/shoe_model.dart';
import 'package:shoes/src/pages/shoe_det_page.dart';
import 'package:shoes/src/pages/shoe_page.dart';
 
void main() {
  return runApp(ChangeNotifierProvider(
    create: (BuildContext context) => ShoeModel(),
    child: MyApp()
  ));
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      initialRoute: '/',
      routes: {
        '/' :(_) => ShoePage(),
        'detail' :(_) => ShoeDetail(),
      },
    );
  }
}