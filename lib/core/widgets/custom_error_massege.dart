import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMassege extends StatelessWidget {
  const CustomErrorMassege({super.key, required this.errMassege});
  final String errMassege;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMassege,
        style: Styles.textStyle18,
      ),
    );
  }
}
