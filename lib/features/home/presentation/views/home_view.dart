import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/drower_body.dart';


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
        //backgroundColor: Colors.transparent,
        //width: MediaQuery.of(context).size.width * 0.72,
        
          child: DrawerBody(),
        ),
      ),
    );
  }
}


