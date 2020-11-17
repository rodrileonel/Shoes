import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier{
  String _image = 'assets/azul.png';
  String _talla = '9';

  String get image => this._image;
  
  set image (value){
    this._image = value;
    notifyListeners();
  }

  String get talla => this._talla;
  set talla(value){
    this._talla = value;
    notifyListeners();
  }

}