class DataWisataModel {
  String title;
  String image;

  DataWisataModel({this.title, this.image});

  factory DataWisataModel.fromJson(Map<String, dynamic> json) =>
      DataWisataModel(
          title: json['title'],
          image: json['image']
      );

  Map<String, dynamic> toJson() =>
      {'title': title, 'image': image};

}

class DataWisataDetailModel {
  String title;
  String image;
  String address;
  String content;

  DataWisataDetailModel({this.title, this.image, this.address, this.content});

  factory DataWisataDetailModel.fromJson(Map<String, dynamic> json) =>
      DataWisataDetailModel(
          title: json['title'],
          image: json['image'],
          address: json['address'],
          content: json['content']
      );

  Map<String, dynamic> toJson() =>
      {'title': title, 'image': image, 'address' : address, 'content' : content};

}