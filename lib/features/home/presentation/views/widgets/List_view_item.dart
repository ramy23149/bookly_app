import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.26,
      child: AspectRatio(
        aspectRatio: 3/4,
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