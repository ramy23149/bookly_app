import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best_Seller_List_View_Item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(
            height: 25,
          ),
          Text(
            'Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Text('skjfhkjdshgf');
        // return const BookListViewItem();
      },
    );
  }
}
