import 'package:flutter/material.dart';
import 'package:recipes_app/components/category_item.dart';
import 'package:recipes_app/data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //Tamanho de cada elemento, 200 pixels
          childAspectRatio: 3/2, //Proporção
          crossAxisSpacing: 20, //Espaçamento no eixo cruzado
          mainAxisSpacing: 20,  //Espaçamento no eixo
        ),
        children: dummyCategories.map((cat) {
          return CategoryItem(cat);
        } ).toList(),
      );
  }
}