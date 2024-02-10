import 'package:flutter/material.dart';


enum SessionNotifier {
  loggedIn,
  notLoggedIn,
  authenticating,
}

SessionNotifier loggedInStatus = SessionNotifier.notLoggedIn;
