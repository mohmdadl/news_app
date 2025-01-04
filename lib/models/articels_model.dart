class ArticlesModel {
  String? urlToImage;
  String? title;
  String? description;

  ArticlesModel(
      {required this.urlToImage,
      required this.title,
      required this.description});

  factory ArticlesModel.fomJson(jsondata) {
    return ArticlesModel(
        urlToImage: jsondata['urlToImage'],
        title: jsondata['title'],
        description: jsondata['description']);
  }
}
