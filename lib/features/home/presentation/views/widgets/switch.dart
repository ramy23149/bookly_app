import 'package:bookly_app/core/widgets/appNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/widgets/themes.dart';

class SwitchThemeApp extends StatefulWidget {
  const SwitchThemeApp({
    super.key,
  });

  @override
  State<SwitchThemeApp> createState() => _SwitchThemeAppState();
}

class _SwitchThemeAppState extends State<SwitchThemeApp> {
  bool isActive = true;

  void onThemeChange(bool value, AppNotifier theme) async {
    if (value == false) {
      theme.setTheme(darkTheme);
    } else {
      theme.setTheme(lightTheme);
    }

    final pref = await SharedPreferences.getInstance();
    pref.setBool('themeMode', value);
  
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<AppNotifier>(context);
    return Switch(
        activeColor: Colors.white,
        activeThumbImage: const AssetImage('assets/images/moon.png'),
        inactiveThumbImage: const AssetImage('assets/images/sun.webp'),
        inactiveThumbColor: Colors.black12,
        value:themeMode.getTheme == darkTheme ? false : isActive,
        onChanged: (value) {
          setState(() {
            isActive = value;
          });
          onThemeChange(value, themeMode);
        
        });
  }
}
