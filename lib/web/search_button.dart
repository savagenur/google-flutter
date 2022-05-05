import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';

class SearchButton extends StatelessWidget {
  final String title;

  const SearchButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      child: Text(title),
      onPressed: () {},
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      color: searchColor,
    );
  }
}
