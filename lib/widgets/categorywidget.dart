import 'package:flutter/material.dart';
import 'package:newsapp/models/categorymodel.dart';
import 'package:newsapp/screens/categoryscreen.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.category});
  CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(categoryName: category.title,);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Center(
          child: Text(
            category.title,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        // color: Colors.black,
        height: 110,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          image: DecorationImage(
              image: AssetImage(
                category.image,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
