import 'dart:convert';

import 'package:flutter/cupertino.dart';

class ChaptersData {
  String? title;
  List<Chapters>? chapters;

  ChaptersData({required this.title, required this.chapters});

  ChaptersData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['chapters'] != null) {
      chapters = <Chapters>[];
      json['chapters'].forEach((v) {
        chapters?.add(Chapters.fromJson(v));
      });
    }
  }
}

class Chapters {
  String? dateTime;
  String? text;

  Chapters({required this.dateTime, required this.text});

  Chapters.fromJson(Map<String, dynamic> json) {
    dateTime = json['dateTime'];
    text = json['text'];
  }
}
