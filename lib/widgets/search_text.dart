import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {

  final Function(String) filterItems;

  SearchWidget({
    super.key,
    required this.filterItems
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController textEditingController = TextEditingController();

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: 'Search',
        suffixIcon: textEditingController.text.length>0 ?
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            textEditingController.clear();
            filterItems('');
          },
        ):
        Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onChanged: (query){
        filterItems(query);
      },
    );
  }
}
