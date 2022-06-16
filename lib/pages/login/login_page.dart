import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';

import '../../config.dart';
import '../../services/api_service.dart';
import '../../models/login_request_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAPICallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String roleName = "customer";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: HexColor(Config.appColor),
        body: ProgressHUD(
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),
          ),
          inAsyncCall: isAPICallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              bottom: 30,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  // color: Colors.white,
                ),
              ),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, "/request");
              }, child: Text('request'))
              ],
            ),
          ),
          FormHelper.inputFieldWidget(
            context,
            "username",
            "Username [email]",
            (onVaidateVal) {
              if (onVaidateVal.isEmpty) {
                return "Username is required";
              }
              return null;
            },
            (onSavedVal) {
              email = onSavedVal;
            },
            contentPadding: 15,
            // borderFocusColor: Colors.white,
            // borderColor: Colors.white,
            // textColor: Colors.white,
            // hintColor: Colors.white.withOpacity(0.6),
            borderRadius: 10,
            suffixIcon: Icon(
              Icons.email,
              // color: Colors.white.withOpacity(0.6),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: FormHelper.inputFieldWidget(
              context,
              "password",
              "Password",
              (onVaidateVal) {
                if (onVaidateVal.isEmpty) {
                  return "Password is required";
                }
                return null;
              },
              (onSavedVal) {
                password = onSavedVal;
              },
              contentPadding: 15,
              // borderFocusColor: Colors.white,
              // borderColor: Colors.white,
              // textColor: Colors.white,
              // hintColor: Colors.white.withOpacity(0.6),
              borderRadius: 10,
              obscureText: hidePassword,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                icon: Icon(
                    hidePassword ? Icons.visibility_off : Icons.visibility),
                // color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: FormHelper.submitButton(
              "Login",
              () {
                if (validateAndSave()) {
                  setState(() {
                    isAPICallProcess = true;
                  });

                  LoginRequestModel model = LoginRequestModel(
                    email: email!,
                    password: password!,
                  );

                  return APIService.login(model).then((response) {
                    setState(() {
                      isAPICallProcess = false;
                    });

                    if (response.token != null) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/home',
                        (route) => false,
                      );
                    } else {
                      FormHelper.showSimpleAlertDialog(
                        context,
                        Config.appName,
                        response.message,
                        "OK",
                        () {
                          Navigator.pop(context);
                        },
                      );
                    }
                  });
                }
              },
              btnColor: HexColor('#006994'),
              // borderColor: Colors.white,
              // txtColor: Colors.white,
              borderRadius: 10,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
