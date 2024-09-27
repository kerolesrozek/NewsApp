class NewsModel {
  final String? image;
  final String? title;
  final String? description;

  NewsModel(
      {required this.image, required this.title, required this.description});
  factory NewsModel.fromjson(data) {
    return NewsModel(
      image: data['urlToImage'],
      title: data['title'],
      description: data['description'],
    );
  }
}
