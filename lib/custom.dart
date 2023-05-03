
import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const custom_button({super.key,required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return
    ElevatedButton(onPressed: onPressed,
     style: ButtonStyle(
       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
       backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0))),

     ), child:Text(text,style: const TextStyle(fontSize: 16),) ,
    );
  }
}
