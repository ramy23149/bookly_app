import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class InitialState extends StatelessWidget {
  const InitialState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
    child: Text('there are no books, start searching now🔍',style: Styles.textStyle20,maxLines: 2,overflow:TextOverflow.visible,),
    );
  }
}
