import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key,required this.hintText,required this.labelText, required this.icon}) : super(key: key);
  String hintText;
  String labelText;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
          style: TextStyle(color: Color(0xFF464646)),
          cursorColor: Colors.grey,
          decoration: InputDecoration(

            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon:icon,
            hintText: hintText,
            label: Text(labelText,style: TextStyle(color: Colors.grey),),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(width: 0,color: Color(0xFFE0E0E0))),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(width: 0,color: Color(0xFFE0E0E0))),
          )
      ),
    );
  }
}
