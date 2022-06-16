import 'package:book_search/pages/login/login_page.dart';
import 'package:book_search/provider/provider.dart';
import 'package:book_search/screens/book_detail_screen.dart';
import 'package:book_search/screens/home_screen.dart';
import 'package:book_search/screens/request_screen.dart';
// import 'package:book_search/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/auth_service.dart';

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool _isLogggedIn = await AuthService.isLoggedIn();
  if (_isLogggedIn) {
    _defaultHome = const Homescreen();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookSearch>(
      create: (context) => BookSearch(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: _defaultHome,
        routes: {
          '/book-details': (context) => const DetailBookPage(),
          '/home': (context) => const Homescreen(),
          '/login': (context) => const LoginPage(),
          '/request':(context) => const RequestScreen(),
        },
      ),
    );
  }
}
