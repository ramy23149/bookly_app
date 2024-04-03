import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/switch.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/translate.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
        drawer: Drawer(
        
          child: DrawerBody(),
        ),
      ),
    );
  }
}

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          S.of(context).drowerTile,
          style: Styles.textStyle20,
        ),
        const Divider(
          color: Colors.white,
        ),
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
    );
  }
}
