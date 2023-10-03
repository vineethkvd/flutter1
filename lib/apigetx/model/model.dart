import 'package:flutter/material.dart';
class DataModel {
  int userId;
  int id;
  String title;
  bool completed;

  DataModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      completed: json["completed"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "completed": completed,
    };
  }
}
