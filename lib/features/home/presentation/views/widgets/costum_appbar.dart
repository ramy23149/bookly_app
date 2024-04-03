import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 27, bottom: 12, right: 17),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.list)),
            Image.asset(
              KLogo,
              height: 60,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  context.push(RouterApp.kSearchView);
                },
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 28,
                ))
          ],
        ),
      ),
    );
  }
}
