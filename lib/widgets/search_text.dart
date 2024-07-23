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
      onChanged: (query){
        filterItems(query);
      },
      decoration: InputDecoration(
        labelText: 'Search',
        labelStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        hintText: 'Find breed',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontStyle: FontStyle.italic,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: textEditingController.text.length>0 ?
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            textEditingController.clear();
            filterItems('');
          },
        ):
        Icon(Icons.search),
        filled: true,
        fillColor: Colors.lightBlueAccent.withOpacity(0.1),
        contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      ),
    );
  }
}
