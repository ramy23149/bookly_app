import 'package:bookly_app/constans.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/switch.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/translate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/styles.dart';
import '../../../../../generated/l10n.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
              S.of(context).drowerTile,
              style: Styles.textStyle20,
                     ),
            
             Image.asset(KLogo,height: 50,width: 100,)//can add flexable
           ],
         ),
        const Divider(
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    S.of(context).appTheme,
                    style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Icon(Icons.brightness_4_sharp),
                const  Spacer(),
                  const SwitchThemeApp(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    S.of(context).appLanguage,
                    style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Icon(Icons.translate_sharp),
                const  Spacer(),
                const  TranslateSwitcher()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}