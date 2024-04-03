import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costum_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newset_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const  Padding(
            padding: EdgeInsets.only(left: 10),
            child: CostumAppBar(),
          ),
        const  NewsetBooks(),
        const  SizedBox(
            height: 50,
          ),
          Padding(
            padding: kPadding,
            child: Text(
              S.of(context).title,
              style: Styles.textStyle18,
            ),
          ),
        const  SizedBox(
            height: 25,
          ),
      const FeaturedBooks(),
        ],
      ),
    );
  }
}
