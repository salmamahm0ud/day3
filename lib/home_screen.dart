import 'package:third/data.dart';
import 'package:third/category_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: DUMMY_ROOMS
            .map((data) => CategoryItem(
                type: data.type,
                description: data.description,
                image: data.image))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, childAspectRatio: 3 / 2),
      ),
    );
  }
}
