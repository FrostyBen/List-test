import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:task_flutter_test/core/data/api_service.dart';

class ChaptersData {
  String? title;
  List<Chapters>? chapters;

  ChaptersData({required this.title, required this.chapters});

  static List<ChaptersData> getListMap(List<dynamic> list) {
    return list
        .map<ChaptersData>(
          (map) => ChaptersData.fromJson(map as Map<String, dynamic>),
        )
        .toList();
  }

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
