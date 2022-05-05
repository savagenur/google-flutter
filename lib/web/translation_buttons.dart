import 'package:flutter/material.dart';
import 'package:google_flutter/widgets/language_button.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: const [
        Text("Google Offered in: "),
        SizedBox(
          width: 5,
        ),
        LanguageButton(title: 'russian'),
        SizedBox(
          width: 5,
        ),
        LanguageButton(title: 'english'),
        SizedBox(
          width: 5,
        ),
        LanguageButton(title: 'turkish'),
        SizedBox(
          width: 5,
        ),
        LanguageButton(title: 'kyrgyz'),
        SizedBox(
          width: 5,
        ),
        LanguageButton(title: 'german'),
        SizedBox(
          width: 5,
        ),
        LanguageButton(title: 'french'),
      ],
    );
  }
}
