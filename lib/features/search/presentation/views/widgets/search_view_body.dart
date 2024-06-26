import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../generated/l10n.dart';

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
          Transform.translate(
            offset: const Offset(-10, 0),
            child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back)),
          ),
          const CustomTextField(),
          const SizedBox(
            height: 25,
          ),
           Text(
            S.of(context).results,
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
