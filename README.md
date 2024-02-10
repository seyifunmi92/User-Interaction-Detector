<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.


-->

TODO: 
This package helps developers detect and monitor every gesture, tap or click made in the application even when it runs in the background

## Features

TODO: 
You can use this package to set a timer and run a function that logs the user out if they do not make any taps or interaction with the application in the required amount of time


## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.
Runs on all Flutter sdk

## Usage

TODO: 


Call the class SessionTimeout class in your main.dart.
wrap your MaterialApp with the SessionTimeout package and pass the required paramenters.

```dart
 Widget build(BuildContext context) {
  return SessionInactivity(
    duration: Duration(minutes: 3),
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


```

## Additional information
```dart
 _timeoutFunction() {
    Navigator.push(navKey.currentState!.context,
        MaterialPageRoute(builder: (context) => const LoginScreen()));
    customAlertWidget(
      navKey.currentState!.context,
      "Your session expired or timedout, please login to continue ",
    );
  }
```


