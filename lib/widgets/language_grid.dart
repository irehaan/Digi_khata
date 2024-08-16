import 'package:flutter/material.dart';
import 'package:digi_khata/widgets/buttons/buttons.dart';

class LanguageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      mainAxisSpacing: 8,
      crossAxisSpacing: 13,
      childAspectRatio: 1.8,
      padding: EdgeInsets.symmetric(horizontal: 14),
      children: [
        LanguageButton('English'),
        LanguageButton('Roman Urdu'),
        LanguageButton('اردو'),
        LanguageButton('سندھی'),
        LanguageButton('پشتو'),
        LanguageButton('فارسی'),
        LanguageButton('العربية'),
        LanguageButton('বাংলা'),
        LanguageButton('हिंदी'),
      ],
    );
  }
}
