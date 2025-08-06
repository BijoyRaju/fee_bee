import 'package:flutter/material.dart';

Widget customText(String text,{Color color = Colors.black, double fontSize = 14.0}){
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize
    )
  );
}

Widget customTextField(String labelText){
  return TextField(
    decoration: InputDecoration(
      labelText: labelText   
    ),
  );
}