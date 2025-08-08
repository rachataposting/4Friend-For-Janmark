// ไฟล์: lib/screen/friend_model.dart

import 'package:flutter/material.dart';

class Friend {
  final String name;
  final String nickname;
  final String age;
  final String favoriteThing;
  final String imagePath;
  final IconData icon;
  final Color cardColor; // << 1. เพิ่ม property สำหรับเก็บสี

  Friend({
    required this.name,
    required this.nickname,
    required this.age,
    required this.favoriteThing,
    required this.imagePath,
    required this.icon,
    required this.cardColor, // << 2. ทำให้ต้องรับค่าสีเสมอ
  });
}

// 3. กำหนดสีให้เพื่อนแต่ละคนใน List ข้อมูลโดยตรง
final List<Friend> friendsData = [
  Friend(
    name: 'รชต จันทะสิงห์',
    nickname: 'เมป',
    age: '20 ปี',
    favoriteThing: 'ของกินที่ชอบ: ยำมาม่าหมูกรอบ',
    imagePath: 'assets/images/1.png',
    icon: Icons.person_outline,
    cardColor: Colors.green.shade100, // สีเขียวอ่อน
  ),
  Friend(
    name: 'Part Time',
    nickname: 'Cover โดย รชต,บอย',
    age: '69 ปี',
    favoriteThing: 'ของกินที่ชอบ: คนคุย',
    imagePath: 'assets/images/2.png',
    icon: Icons.music_note_outlined,
    cardColor: Colors.blue.shade100, // สีฟ้าอ่อน
  ),
  Friend(
    name: 'ทิมมี่ เฮนสัน',
    nickname: 'ธิมมี่',
    age: '19 ปี',
    favoriteThing: 'ของกินที่ชอบ: ลื้อรถ F1',
    imagePath: 'assets/images/3.png',
    icon: Icons.sports_motorsports_outlined,
    cardColor: Colors.grey.shade300, // สีเทา
  ),
  Friend(
    name: 'ปันกอบ',
    nickname: 'ม่อน',
    age: '21 ปี',
    favoriteThing: 'ของกินที่ชอบ: <18',
    imagePath: 'assets/images/4.png',
    icon: Icons.person_outline,
    cardColor: Colors.orange.shade100, // สีส้มอ่อน
  ),
  Friend(
    name: 'พิพัฒ สีทอง',
    nickname: 'จ๋า',
    age: '20 ปี',
    favoriteThing: 'ของกินที่ชอบ: แฮมเบอร์เกอร์',
    imagePath: 'assets/images/5.png',
    icon: Icons.person_outline,
    cardColor: Colors.yellow.shade100, // สีเหลืองอ่อน
  ),
  Friend(
    name: 'สุดที่รัก',
    nickname: 'นุ่น',
    age: '20 ปี',
    favoriteThing: 'ของกินที่ชอบ: ข้าวไข่ดาว',
    imagePath: 'assets/images/6.png',
    icon: Icons.favorite, // ใช้ไอคอนหัวใจทึบไปเลย!
    cardColor: Colors.pink.shade100, // << สีชมพูสำหรับคนพิเศษ!
  ),
];