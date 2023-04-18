import 'package:flutter/material.dart';
import 'package:travel_plan_mobile_app/ui/ongoing_ui.dart';

import 'ui/personal_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ongoing(
        title: 'app',
      ),
    );
  }
}
