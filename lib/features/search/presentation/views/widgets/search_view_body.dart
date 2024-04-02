import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back)),
          const CustomTextField(),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 14,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
