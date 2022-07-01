import 'dart:developer';

import 'package:book_search/config.dart';
import 'package:book_search/models/books_response/datum.dart';
import 'package:book_search/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/books_response/books_response.dart';
import '../services/auth_service.dart';
import '../widgets/list_view.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late Future<BooksResponse> futureBooks;
  bool _isLogggedIn = false;

  void _authStatus() async {
    _isLogggedIn = await AuthService.isLoggedIn();
  }

  @override
  void initState() {
    super.initState();
    _authStatus();
    futureBooks = fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    context.read<BookSearch>().fetchBooks;
    var list = Provider.of<BookSearch>(context).allBook;
    return Scaffold(
      appBar: AppBar(
        title: Text('Book search'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: UserSearch(users: list.data),
              );
            },
          )
        ],
      ),
      body: FutureBuilder<BooksResponse>(
        future: futureBooks,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // log(snapshot.data!.data!.toString());
            var length = snapshot.data!.data!.length;
            var data = snapshot.data!.data!;

            return Container(
                child: ListView.builder(
                    itemCount: length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      print('================================================================');
                      print(Config.imageURL + data[index].cover!);
                      return Card(
                        
                        // child: Container(child: Text(data[index].name!)),
                        child: ListTile(
                          onTap: () => Navigator.pushNamed(
                              context, '/book-details',
                              arguments: data[index]),
                          leading: Container(
                              width: 70,
                              child: Image.network(
                                Config.imageURL + '/' + data[index].cover!,
                                fit: BoxFit.cover,
                              )),
                          title: Text(data[index].name!),
                        ),
                      );
                    }));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/request");
            },
            child: const Text('request'),
          ),
          if (!_isLogggedIn)
            ListTile(
              onTap: () => Navigator.pushNamed(context, '/login'),
              leading: Icon(Icons.logout),
              title: Text('login'),
            ),
          if (_isLogggedIn)
            ListTile(
              onTap: () => AuthService.logout(context),
              leading: Icon(Icons.logout),
              title: Text('logout'),
            ),
        ],
      )),
    );
  }
}

class UserSearch extends SearchDelegate<Datum> {
  final List<Datum>? users;

  UserSearch({required this.users});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, Datum());
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListViewWidget(
      list: searchList,
      context: context,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List<Datum>? suggestions1 = users;
    final suggestions = users!.where((name) {
      return name.name!.toLowerCase().contains(query.toLowerCase());
    });
    //  final suggestions = query.isEmpty ? suggestions1 : [];
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (content, index) => ListTile(
          onTap: () => Navigator.pushNamed(context, '/book-details',
              arguments: suggestions.toList()[index]),
          title: Text(suggestions.toList()[index].name!)),
    );
    // return Consumer<BookSearch >(

    //   builder: (context, state, child) {
    //     return ListViewWidget(list: state.allBook.data!.toList(), context: context);
    //   },
    // );
  }

  List<Datum>? get searchList {
    return users;
  }
}
