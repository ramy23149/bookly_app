import 'package:bookly_app/features/home/presentation/views/widgets/List_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costum_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CostumAppBar(),
        ListViewItem(),
      ],
    );
  }
}


