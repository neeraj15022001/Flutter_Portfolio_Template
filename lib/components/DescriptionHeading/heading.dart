import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  Heading(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ));
  }
}
