import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costum_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/uper_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostumAppBar(),
          UperListView(),
          SizedBox(height: 50,),
          Text('Best Seller',style: Styles.titleMedium,)
        ],
      ),
    );
  }
}

