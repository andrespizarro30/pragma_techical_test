import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {

  final Function(String) filterItems;

  SearchWidget({
    super.key,
    required this.filterItems
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: textEditingController,
      onChanged: (query){
        widget.filterItems(query);
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
            widget.filterItems('');
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
