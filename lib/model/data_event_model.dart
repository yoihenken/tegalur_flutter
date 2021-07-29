class DataEventModel {

  String title;
  String url;
  String date;
  String image;

  DataEventModel({this.title, this.url, this.date, this.image});

  factory DataEventModel.fromJson(Map<String, dynamic> json) =>
      DataEventModel(
          title: json['title'],
          url: json['url'],
          date: json['date'],
          image: json['image']
      );

  Map<String, dynamic> toJson() =>
      {'title': title, 'url': url, 'date': date, 'image': image};

}

class DataEventDetailModel {

  String title;
  String image;
  String content;

  DataEventDetailModel({this.title, this.image, this.content});

  factory DataEventDetailModel.fromJson(Map<String, dynamic> json)=>
      DataEventDetailModel(
          title: json['title'],
          image: json['image'],
          content: json['content']
      );

  Map<String, dynamic> toJson() =>
      {'title': title, 'image': image, 'content': content};
}

