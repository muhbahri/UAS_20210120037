import 'package:flutter/material.dart';
import './pages/dashboard.dart';
import './pages/directory.dart';
import './login.dart';
import './utama.dart';
import './pages/drive.dart';
import './pages/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context) => const LoginPage(),
        '/utama': (context) => const UtamaPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/directory': (context) => const DirectoryPage(),
        '/drive': (context) => const DrivePage(),
        '/profil': (context) => const ProfilPage(),
      },
    );
  }
}
