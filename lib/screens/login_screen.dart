import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  final bool? isAuth;

  const LoginPage({Key? key, this.isAuth}) : super(key: key);
  static const String routeName = '/login-page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // context.read<MessageModel>().fetchValidationMessages;
    Widget nextWidget = Container();

    if (widget.isAuth == false) {
      nextWidget = Homescreen();
      return nextWidget;
    }
    return Scaffold(
      // backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 100.0,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: const Text('Book Search'),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  width: size.width * 0.8,
                  child: TextFormField(
                    controller: _usernameEditingController,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'username is required';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  width: size.width * 0.8,
                  child: TextFormField(
                    controller: _passwordEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'password is required';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: OutlinedButton(
                          style: const ButtonStyle(),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              print(_usernameEditingController.text.trim() +
                                  _passwordEditingController.text.trim());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homescreen()),
                              );
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
