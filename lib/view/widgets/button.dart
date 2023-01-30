import 'package:flutter/material.dart';
import 'package:hour/globals.dart' as globals;

Widget button(String text, double width, double height, Function() onPressed) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: globals.primary, spreadRadius: 3),
        ],
      ),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height), 
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )
        ),
        
        onPressed: onPressed,
        
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: globals.primary,
            fontWeight: FontWeight.w600,
          )
        ),

      ),
    );
  }