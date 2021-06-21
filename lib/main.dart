import 'package:flutter/material.dart';
import 'package:new_contact_car/home_files/home_page.dart';

import 'ad_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
