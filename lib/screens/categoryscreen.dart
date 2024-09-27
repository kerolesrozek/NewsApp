import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newslistviewbuilder.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.categoryName});
  String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              categoryName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'News',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: categoryName,
            )
          ],
        ),
      ),
    );
  }
}
