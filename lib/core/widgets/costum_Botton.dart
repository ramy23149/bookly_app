import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.textColor,
      required this.text,
      this.onPressed});

  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius:isArabic()? borderRadius??const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ):borderRadius??const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )
                ),
            backgroundColor: backgroundColor ?? Colors.white),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor ?? Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'en';
}
  //  BorderRadius _getBorderRadius() {
  //   if (isArabic) {
  //     return const BorderRadius.only(
  //       topRight: Radius.circular(16),
  //       bottomRight: Radius.circular(16),
  //     );
  //   } else {
  //     return const BorderRadius.only(
  //       topLeft: Radius.circular(16),
  //       bottomLeft: Radius.circular(16),
  //     );
  //   }
  // }


// borderRadius ??
//                     const BorderRadius.only(
//                       topLeft: Radius.circular(16),
//                       bottomLeft: Radius.circular(16),
//                     )