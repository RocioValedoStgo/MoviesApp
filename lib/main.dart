import 'package:flutter/material.dart';

import 'src/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Spike',
    theme: ThemeData(primaryColor: Color.fromRGBO(106, 98, 183, 1)),
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
    },
  ));
}
