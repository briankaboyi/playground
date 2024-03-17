import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text_widget extends StatelessWidget {
  final String text;
  final  String? font;
  final int color;
  final double? lineHeight;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const text_widget(
      {Key? key,
        required this.text,
        this.font,
        required this.color,
        required this.fontSize,
        required this.fontWeight,
        required this.textAlign, this.lineHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.getFont("Montserrat",
          color: Color(color),
          fontSize: fontSize,
          fontWeight: fontWeight,height: lineHeight),
    );
  }

}
extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}