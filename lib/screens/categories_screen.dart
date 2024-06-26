import 'package:flutter/material.dart';
import '../componentes/category_item.dart';
import '../data/dummy_data.dart';

class CategriesScreen extends StatelessWidget {
  const CategriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(
          category: cat,
        );
      }).toList(),
    );
  }
}
