import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/newsmodel.dart';
import 'package:newsapp/services/newsservices.dart';
import 'package:newsapp/widgets/newslistview.dart';

class NewsListViewBuilder extends StatefulWidget {
   NewsListViewBuilder({super.key,required this.category});
   String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices(Dio()).getNews(caregory: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshots) {
        if (snapshots.hasData) {
          return NewsListView(articles: snapshots.data!);
        } else if (snapshots.hasError) {
          return SliverToBoxAdapter(
            child: Text('Error try later'),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
