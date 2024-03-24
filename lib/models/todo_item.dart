import 'package:flutter/material.dart';

class TodoItem {
  final int id;
  final String title;
  final String subtitle;
  final List<String> imageUrls;

  TodoItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrls,
  });

  factory TodoItem.fromJson(Map<String, dynamic> json) {
    return TodoItem(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      imageUrls: json['imageUrls'] != null ? List<String>.from(json['imageUrls']) : [],
    );
  }
  final List<Map<String, dynamic>> items = [
  {
    "id": "gambling",
    "title": "เว็บพนัน",
    "subtitle": "การพนัน แทงบอล และอื่นๆ",
    "image": "/images/webby_fondue/gambling.jpg"
  },
  {
    "id": "fraud",
    "title": "เว็บปลอมแปลง",
    "subtitle": "หลอกให้กรอกข้อมูลส่วนตัว/รหัสผ่าน",
    "image": "/images/webby_fondue/fraud.png"
  },
  {
    "id": "fake-news",
    "title": "เว็บข่าวมั่ว",
    "subtitle": "Fake news, ข้อมูลที่ทำให้เข้าใจผิด",
    "image": "/images/webby_fondue/fake_news_2.png"
  },
  {
    "id": "share",
    "title": "เว็บแชร์ลูกโซ่",
    "subtitle": "หลอกลงทุน",
    "image": "/images/webby_fondue/thief.jpg"
  }
];
}