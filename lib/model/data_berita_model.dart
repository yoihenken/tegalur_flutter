class DataBeritaModel {
  String title;
  String url;
  String img;
  String type;
  String date;

  DataBeritaModel({this.title, this.url, this.img, this.type, this.date});

  factory DataBeritaModel.fromJson(Map<String, dynamic> json) =>
      DataBeritaModel(
          title: json["title"],
          url: json["url"],
          img: json["img"],
          type: json["type"],
          date: json["date"]);

  Map<String, dynamic> toJson() =>
      {"title": title, "url": url, "img": img, "type": type, "date": date};
}

class DataBeritaDetailModel {
  String title;
  String img;
  String date;
  String writer;
  String content;

  DataBeritaDetailModel(
      {this.title, this.img, this.date, this.writer, this.content});

  factory DataBeritaDetailModel.fromJson(Map<String, dynamic> json) =>
      DataBeritaDetailModel(
          title: json["title"],
          img: json["img"],
          date: json["tanggal"],
          writer: json["penulis"],
          content: json["isi"]);

  Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
        "date": date,
        "penulis": writer,
        "isi": content
      };
}
