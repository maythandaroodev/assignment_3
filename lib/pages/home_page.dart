import 'package:assignments_3/item_views/home_page_item_views/home_page_item_views.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text(kRGFText),
      // ),
      body: Column(
        children: [
          CreateAccView(),
          InputLayerView(),
          LastAccessView(),
        ],
      ),
    );
  }
}
