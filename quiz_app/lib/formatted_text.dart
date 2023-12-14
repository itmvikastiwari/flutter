import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormattedText extends StatelessWidget{

  final String text;

  final double size;

  final TextAlign align;

  const FormattedText(this.text, this.size, {this.align = TextAlign.center, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        textAlign: align,
        style: GoogleFonts.lato(color: Colors.white,fontSize: size)
    );
  }

}