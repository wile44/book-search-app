import 'package:book_search/models/books_response/datum.dart';
import 'package:flutter/material.dart';

import '../config.dart';

class DetailBookPage extends StatelessWidget {
  const DetailBookPage({Key? key}) : super(key: key);

  TextStyle textStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }

  Widget textTitle(String? title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title!,
        style: textStyle(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Datum;

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
              width: 100,
              child: Image.network(
                Config.imageURL + '/' + args.cover!,
                fit: BoxFit.cover,
              ),
            ),
            textTitle('Book name'),
            Text(
              args.name!,
              style: textStyle(20),
            ),
            textTitle('Author'),
            Text(
              args.author!,
              style: textStyle(20),
            ),
            textTitle('Category'),
            Text(
              args.category!.name!,
              style: textStyle(20),
            ),
            textTitle('Bookshop'),
            Text(
              args.bookShop!.name!,
              style: textStyle(20),
            ),
            textTitle('Quantity'),
            Text(
              args.items!,
              style: textStyle(20),
            ),
            textTitle('Price'),
            Text(
              "Tshs ${args.price!.toString()}",
              style: textStyle(20),
            ),
          ],
        ),
      ),
    ));
  }
}
