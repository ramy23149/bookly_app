import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/switch.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:const HomeViewBody(),
        drawer: Drawer(
        
          child:const DrawerBody(),
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
        const Text(
          'Settings',
          style: Styles.textStyle20,
        ),
        const Divider(
          color: Colors.white,
        ),
        Row(
          children: [
            Text(
              'App theme',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 7,
            ),
            const Icon(Icons.brightness_4_sharp),
            Spacer(),
            const SwitchThemeApp()
          ],
        ),
      ],
    );
  }
}
