import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  
  const StyledText(this.text,{super.key});
  final String text;
  @override
  Widget build(context) {
    // TODO: implement build
    return  Center(
        child:Text(
        text,
        style:const TextStyle(
        fontSize: 25.0,
      ),
    ));
  }
}
