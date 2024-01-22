import 'package:bookly_app/constans.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 27,bottom: 12,right: 17),
          child: Row(
            children: [
              Image.asset(KLogo,height: 60,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 28,))
            ],
          ),
        );
  }
}