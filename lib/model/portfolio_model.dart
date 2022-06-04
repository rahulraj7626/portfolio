// To parse this JSON data, do
//
//     final portFolioModel = portFolioModelFromJson(jsonString);

import 'dart:convert';

PortFolioModel portFolioModelFromJson(String str) =>
    PortFolioModel.fromJson(json.decode(str));

String portFolioModelToJson(PortFolioModel data) => json.encode(data.toJson());

class PortFolioModel {
  PortFolioModel({
    required this.name,
    required this.about,
    required this.dob,
    required this.designation,
    required this.experiance,
    required this.projects,
    required this.languages,
    required this.highestQualification,
    required this.qualification,
    required this.address,
    required this.links,
    required this.iconsList,
  });

  String name;
  String about;
  String dob;
  String designation;
  String experiance;
  String projects;
  String languages;
  String highestQualification;
  List<Qualification> qualification;
  Address address;
  IconsList links;
  IconsList iconsList;

  factory PortFolioModel.fromJson(Map<String, dynamic> json) => PortFolioModel(
        name: json["name"],
        about: json["about"],
        dob: json["dob"],
        designation: json["designation"],
        experiance: json["experiance"],
        projects: json["projects"],
        languages: json["languages"],
        highestQualification: json["highestQualification"],
        qualification: List<Qualification>.from(
            json["qualification"].map((x) => Qualification.fromJson(x))),
        address: Address.fromJson(json["address"]),
        links: IconsList.fromJson(json["links"]),
        iconsList: IconsList.fromJson(json["iconsList"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "about": about,
        "dob": dob,
        "designation": designation,
        "experiance": experiance,
        "projects": projects,
        "languages": languages,
        "highestQualification": highestQualification,
        "qualification":
            List<dynamic>.from(qualification.map((x) => x.toJson())),
        "address": address.toJson(),
        "links": links.toJson(),
        "iconsList": iconsList.toJson(),
      };
}

class Address {
  Address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
  });

  String address1;
  String address2;
  String address3;
  String address4;
  String address5;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        address1: json["address1"],
        address2: json["address2"],
        address3: json["address3"],
        address4: json["address4"],
        address5: json["address5"],
      );

  Map<String, dynamic> toJson() => {
        "address1": address1,
        "address2": address2,
        "address3": address3,
        "address4": address4,
        "address5": address5,
      };
}

class IconsList {
  IconsList({
    required this.mob,
    required this.watsapp,
    required this.linked,
    required this.github,
    required this.stack,
    required this.email,
    required this.insta,
    required this.fb,
  });

  String mob;
  String watsapp;
  String linked;
  String github;
  String stack;
  String email;
  String insta;
  String fb;

  factory IconsList.fromJson(Map<String, dynamic> json) => IconsList(
        mob: json["mob"],
        watsapp: json["watsapp"],
        linked: json["linked"],
        github: json["github"],
        stack: json["stack"],
        email: json["email"],
        insta: json["insta"],
        fb: json["fb"],
      );

  Map<String, dynamic> toJson() => {
        "mob": mob,
        "watsapp": watsapp,
        "linked": linked,
        "github": github,
        "stack": stack,
        "email": email,
        "insta": insta,
        "fb": fb,
      };
}

class Qualification {
  Qualification({
    required this.course,
    required this.college,
    required this.date,
    required this.place,
  });

  String course;
  String college;
  String date;
  String place;

  factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        course: json["course"],
        college: json["college"],
        date: json["date"],
        place: json["place"],
      );

  Map<String, dynamic> toJson() => {
        "course": course,
        "college": college,
        "date": date,
        "place": place,
      };
}
