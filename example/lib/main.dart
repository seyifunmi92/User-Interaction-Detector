import 'dart:async';
import 'package:flutter/material.dart';
import '../view/LoginScreen.dart';
import '../widgets/alertdialog.dart';
import '../sessioninactivitylistener/enums.dart';
import 'package:user_interaction_detector/user_interaction_detector.dart';




void main() {
  runApp(const UserInactivity());
}

class UserInactivity extends StatefulWidget {
  const UserInactivity({super.key});

  @override
  State<UserInactivity> createState() => _UserInactivity();
}

class _UserInactivity extends State<UserInactivity> {
  static final navKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    loggedInStatus = SessionNotifier.notLoggedIn;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return

      SessionInactivity(
      duration: const Duration(minutes: 3),
      onSessionTimeout: () {
        loggedInStatus != SessionNotifier.notLoggedIn
            ? _timeoutFunction()
            : null;
      },
      child: MaterialApp(
        navigatorKey: _UserInactivity.navKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }

  _timeoutFunction() {
    Navigator.push(navKey.currentState!.context,
        MaterialPageRoute(builder: (context) => const LoginScreen()));
    customAlertWidget(
      navKey.currentState!.context,
      "Your session expired or timedout, please login to continue ",
    );
  }
}
