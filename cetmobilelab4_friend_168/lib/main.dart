// ไฟล์: lib/main.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen/friend_model.dart'; // import จากตำแหน่งที่ถูกต้อง

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(Theme.of(context).textTheme),
      ),
      home: const FriendListPage(),
    );
  }
}

class FriendListPage extends StatelessWidget {
  const FriendListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: Text(
          "My Friends & My Channel",
          style: GoogleFonts.kanit(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: friendsData.length,
        itemBuilder: (context, index) {
          final friend = friendsData[index];
          return FriendCard(friend: friend);
        },
      ),
    );
  }
}

class FriendCard extends StatelessWidget {
  final Friend friend;
  const FriendCard({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      elevation: 4,
      // << **จุดสำคัญ** ดึงสีจากข้อมูลมาใช้โดยตรงเลย
      color: friend.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    friend.name,
                    style: GoogleFonts.kanit(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  InfoRow(icon: friend.icon, text: friend.nickname),
                  const SizedBox(height: 4),
                  InfoRow(icon: Icons.cake_outlined, text: friend.age),
                  const SizedBox(height: 4),
                  InfoRow(
                      icon: Icons.fastfood_outlined,
                      text: friend.favoriteThing),
                ],
              ),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(friend.imagePath),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey.shade800),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 15, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}