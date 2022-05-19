import 'package:flutter/material.dart';

import 'store/page_store.dart';

class PageFeature extends StatefulWidget {
  const PageFeature({Key? key}) : super(key: key);

  @override
  State<PageFeature> createState() => _PageFeatureState();
}

class _PageFeatureState extends State<PageFeature> {
  final PageStore _store = PageStore();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Minha página'),
      ),
    );
  }
}
