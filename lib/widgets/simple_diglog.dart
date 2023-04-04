import 'package:flutter/material.dart';

class SimDialog extends StatelessWidget {
  String title;
  String content;

  SimDialog(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        // TextButton(
        //   onPressed: () => Get.back(),
        //   child: Text('OK'),
        // ),
      ],
    );
  }

}