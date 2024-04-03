import 'package:bookly_app/features/search/presentation/maneger/searching_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../generated/l10n.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SearchCubit>(context);
    return TextField(
    
      
      controller: controller,
      
      onSubmitted: (value) {
        bloc.getSerchBooks(bookName: value);
      },
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(Colors.grey),
        focusedBorder: buildOutLineInputBorder(Colors.white),
        hintText: S.of(context).bookName,
        suffixIcon: IconButton(
          onPressed: () {
            bloc.getSerchBooks(bookName: controller!.text);
          },
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color));
  }
}
