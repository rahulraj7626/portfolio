// To parse this JSON data, do
//
//     final worksModel = worksModelFromJson(jsonString);

import 'dart:convert';

WorksModel worksModelFromJson(String str) =>
    WorksModel.fromJson(json.decode(str));

String worksModelToJson(WorksModel data) => json.encode(data.toJson());

class WorksModel {
  WorksModel({
    required this.works,
  });

  List<Work> works;

  factory WorksModel.fromJson(Map<String, dynamic> json) => WorksModel(
        works: List<Work>.from(json["works"].map((x) => Work.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "works": List<dynamic>.from(works.map((x) => x.toJson())),
      };
}

class Work {
  Work({
    required this.title,
    required this.haveLink,
    required this.linkIcon,
    required this.description,
    required this.img,
  });

  String title;
  bool haveLink;
  String linkIcon;
  List<String> description;
  String img;

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        title: json["title"],
        haveLink: json["haveLink"],
        linkIcon: json["linkIcon"],
        description: List<String>.from(json["description"].map((x) => x)),
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "haveLink": haveLink,
        "linkIcon": linkIcon,
        "description": List<dynamic>.from(description.map((x) => x)),
        "img": img,
      };
}
