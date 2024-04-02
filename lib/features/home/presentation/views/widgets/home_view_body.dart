import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/costum_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newset_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final Future<void> Function() onRefresh = () async {
    await Future.delayed(Duration(seconds: 3));
  };
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      edgeOffset: 20,
      onRefresh: onRefresh,
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: CostumAppBar(),
            ),
            NewsetBooks(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: kPadding,
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FeaturedBooks(),
          ],
        ),
      ),
    );
  }
}
