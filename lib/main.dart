// Mengimpor pustaka dasar Flutter dan konfigurasi Web SQLite FFI
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

// [PERUBAHAN TAHAP 7.5]: Tambahkan impor halaman Splash Screen
import 'pages/splash_screen_page.dart';

// Fungsi utama (entry point) aplikasi
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi wajib untuk platform Web agar SQLite berjalan normal di Chrome
  if (kIsWeb) {
    databaseFactory = databaseFactoryFfiWeb;
  }

  runApp(const SmartKasirApp());
}

// Deklarasi kelas root aplikasi turunan StatelessWidget
class SmartKasirApp extends StatelessWidget {
  const SmartKasirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartKasir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A), // Biru Navy Profesional Bisnis
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
          backgroundColor: Color(0xFF1E3A8A),
          foregroundColor: Colors.white,
        ),
      ),
      // [PERUBAHAN TAHAP 7.5]: Titik awal aplikasi dibuka pertama kali melalui SplashScreenPage()
      home: const SplashScreenPage(),
    );
  }
}