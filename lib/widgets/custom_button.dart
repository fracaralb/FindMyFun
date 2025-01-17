import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  
  const CustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(15)
        ),
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: Color(0xff545454), fontWeight: FontWeight.bold, fontSize: 14),),
      ),
    );
  }
}