library userinactivitydetector;

import 'dart:async';
import 'package:flutter/material.dart';



class SessionInactivity extends StatefulWidget {
  final VoidCallback onSessionTimeout;
  final Duration duration;
  final Widget child;
  const SessionInactivity(
      {super.key,
        required this.onSessionTimeout,
        required this.duration,
        required this.child});

  @override
  State<SessionInactivity> createState() => _SessionInactivityState();
}

class _SessionInactivityState extends State<SessionInactivity> {
  Timer? _timer;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _checkTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        _startTimer();
      },
      behavior: HitTestBehavior.translucent,
      child: widget.child,
    );
  }

  /// start Timer
  _startTimer() {
    _checkTimer();
    _timer = Timer(widget.duration, () {
      widget.onSessionTimeout();
    });
  }

  _checkTimer() {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
    }
  }
}
