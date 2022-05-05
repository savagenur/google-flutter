import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';

class LanguageButton extends StatelessWidget {
  final String title;
  const LanguageButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Text(title,
      style: const TextStyle(
        color: blueColor,
      ),),
    );
  }
}
