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

  @override
  void initState() {
    super.initState();
    futureBooks = fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    context.read<BookSearch>().fetchBooks;
    var list = Provider.of<BookSearch>(context).allBook;
    // List<String> list = ['book 1', 'book 2', 'book 3'];
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
            // return ListTile(
            //     leading: Container(
            //       height: 200,
            //       // decoration: BoxDecoration(
            //       //   image: DecorationImage(
            //       //     image: NetworkImage(snapshot.data!.data!.first.cover!),
            //       //   ),
            //       // ),
            //     ),
            //     title: Text(snapshot.data!.data!.first.name!));
            print(snapshot.data!.data!.length);
            var length = snapshot.data!.data!.length;
            var data = snapshot.data!.data!;
            return Container(
                child: ListView.builder(
                    itemCount: length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        // child: Container(child: Text(data[index].name!)),
                        child: ListTile(
                          leading: Container(
                              width: 70,
                              child: Image.network(
                                Config.apiURL + data[index].cover!,
                                fit: BoxFit.cover,
                              )),
                          title: Text(data[index].name!),
                          trailing: Icon(Icons.more_vert),
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
