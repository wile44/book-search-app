// import 'package:book_search/screens/login_screen.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/login/login_page.dart';
import 'provider/provider.dart';
import 'screens/book_detail_screen.dart';
import 'screens/home_screen.dart';
import 'screens/request_screen.dart';
import 'services/auth_service.dart';

Widget _defaultHome = const LoginPage();
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  // bool _isLogggedIn = await AuthService.isLoggedIn();
  // if (_isLogggedIn) {
    _defaultHome = const Homescreen();
  // }
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
          '/request': (context) => const RequestScreen(),
        },
      ),
    );
  }
}
