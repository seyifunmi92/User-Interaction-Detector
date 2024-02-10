import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  void Function()? onTap;
   Button({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.green,
        height:50,
        width: 400,
        child: const Center(child:  Text ("Login")),
        
      
      ),
    );
  }
}