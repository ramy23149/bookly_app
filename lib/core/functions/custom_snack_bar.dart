import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

void snackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black,
      content: Text(text,style: Styles.textStyle18.copyWith(color: Colors.white),),
    ),
  );
}
