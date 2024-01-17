import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/me.jpg',))
          ),
        ),
      ),
    );
  }
}