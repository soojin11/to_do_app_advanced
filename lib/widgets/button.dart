import 'package:flutter/material.dart';
import 'package:flutter_todo_app/UI/theme.dart';

class Mybutton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const Mybutton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: primaryClr),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            label,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
