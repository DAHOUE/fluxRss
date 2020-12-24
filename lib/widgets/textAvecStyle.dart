import 'package:flutter/material.dart';

class TextAvecStyle extends Text{

  TextAvecStyle(String data, {textAlign: TextAlign.center, fontSize: 15.0, fontStyle: FontStyle.normal, color: Colors.indigo}) :
  super(data,
        textAlign: textAlign,
        style: new TextStyle(
        color: color,
        fontStyle: fontStyle,
        fontSize: fontSize
      ))  ;
}