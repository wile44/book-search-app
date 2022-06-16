import 'package:book_search/models/books_response/datum.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key, required this.list, required this.context})
      : super(key: key);
  final BuildContext context;
  final List<Datum>? list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list!.length,
      itemBuilder: (BuildContext context, int index) => buildCard(index),
    );
  }

  Card buildCard(int index) {
    final user = list![index];
    return Card(
      child: ListTile(
        onTap: (() => Navigator.pushNamed(context, '/book-details')),
        leading: Text((index + 1).toString()),
        title: Text(user.name!),
      ),
    );
  }
}
