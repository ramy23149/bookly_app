import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../constans.dart';
import '../../../../../core/widgets/appNotifier.dart';

class TranslateSwitcher extends StatefulWidget {
  const TranslateSwitcher({super.key});

  @override
  State<TranslateSwitcher> createState() => _TranslateSwitcherState();
}

class _TranslateSwitcherState extends State<TranslateSwitcher> {
  bool isActive = true;

  void onLangChange(bool value, AppNotifier locale) async {
    if (value == false) {
      locale.setLocale(defaultLocale);
    } else {
      locale.setLocale(arabicLocale);
    }
    final pref = await SharedPreferences.getInstance();
    pref.setBool('locale', value);
  }

  @override
  Widget build(BuildContext context) {
    final locale = Provider.of<AppNotifier>(context);
    return Switch(
        activeColor: Colors.white,
        inactiveThumbColor: Colors.black12,
        value:locale.getLocale==defaultLocale?false:isActive,
        onChanged: (value) {
          setState(() {
            isActive = value;
          });
          onLangChange(value, locale);
        });
    
  }
}
