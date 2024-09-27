import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/newsmodel.dart';
import 'package:newsapp/services/newsservices.dart';

import 'package:newsapp/widgets/newswidget.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});

  List<NewsModel> articles;


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => NewsWidget(
          model: articles[index],
        ),
        childCount: articles.length,
      ),
    );
  }
}
