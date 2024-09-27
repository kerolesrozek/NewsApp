
import 'package:flutter/material.dart';
import 'package:newsapp/models/categorymodel.dart';
import 'package:newsapp/widgets/categorywidget.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({
    super.key,
  });

  List<CategoryModel>caegory=[
     
    CategoryModel(image: 'assets/business.avif', title: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', title: 'Entertainment'),
    CategoryModel(image: 'assets/general.avif', title: 'General'),
    CategoryModel(image: 'assets/health.avif', title: 'Health'),
    CategoryModel(image: 'assets/science.avif', title: 'Science'),
    CategoryModel(image: 'assets/sports.avif', title: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', title: 'Technology'),
  ];
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: caegory.length,
        itemBuilder: (context,index){
        return CategoryWidget(
          category: caegory[index],
        );
      },),
    );
  }
}
