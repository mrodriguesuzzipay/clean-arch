import 'package:flutter/material.dart';

import '../core/di/locators.dart';
import 'feature/presentation/page_feature.dart';

void main() async {
  await setUpLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageFeature(),
    );
  }
}
