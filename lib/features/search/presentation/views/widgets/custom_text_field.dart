import 'package:bookly_app/features/search/presentation/maneger/searching_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/inital_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        
  BlocProvider.of<SearchCubit>(context).getSerchBooks(bookName: value);

            },
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(Colors.grey),
        focusedBorder: buildOutLineInputBorder(Colors.white),
        hintText: 'Book Name',
        suffixIcon: IconButton(
          onPressed: () {},
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
