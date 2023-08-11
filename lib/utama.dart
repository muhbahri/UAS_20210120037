import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '/pages/drive.dart';
import '/pages/dashboard.dart';
import '/pages/profil.dart';

class UtamaPage extends StatefulWidget {
  const UtamaPage({super.key});

  @override
  State<UtamaPage> createState() => _UtamaPageState();
}

int currentIndex = 0;

class _UtamaPageState extends State<UtamaPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = const [
      DashboardPage(),
      DrivePage(),
      ProfilPage(),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color(0xFF4B39EF),
        gradient: const LinearGradient(
          colors: [Color(0xFF4B39EF), Color(0xAB4B39EF)],
        ),
        items: const [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.cloud, title: 'Cloud'),
          TabItem(icon: Icons.person, title: 'Profil'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
