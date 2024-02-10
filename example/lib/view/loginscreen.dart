import '../widgets/textfield.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../sessioninactivitylistener/enums.dart';
import '../widgets/alertdialog.dart';
import '../view/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Inactivity Test"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 180,
              ),
              TextFieldCustom(
                controller: usernameController,
                hintText: "Username",
                isObscure: false,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldCustom(
                controller: passwordController,
                hintText: "Password",
                isObscure: true,
              ),
              const SizedBox(
                height: 40,
              ),
              Button(onTap: () {
                _loginFunction();
              })
            ],
          ),
        ),
      ),
    );
  }

  _loginFunction() {
    loggedInStatus = SessionNotifier.authenticating;
    if (usernameController.text == "foluwaseyi.dev@gmail.com" &&
        passwordController.text == "12345") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
      loggedInStatus = SessionNotifier.loggedIn;
    } else {
      loggedInStatus = SessionNotifier.notLoggedIn;
      customAlertWidget(context, "Invalid credentials");
    }
  }
}
