
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, //required this.bookModel
  });
//  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
         return const Text('skjfhkjdshgf');
        //return BookListViewItem();
      },
    );
  }
}
