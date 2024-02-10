import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

customAlertWidget(
  BuildContext context,
  String responseText,
) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(
        responseText,
      ),
      actions: [
        CupertinoDialogAction(
          child: const Text(
            "Close",
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
