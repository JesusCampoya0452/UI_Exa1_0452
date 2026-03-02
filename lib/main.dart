import 'package:flutter/material.dart';
import 'Mispantallas/inicio.dart';
import 'Mispantallas/pantalla2.dart';
import 'Mispantallas/pantalla3.dart';

void main() {
  runApp(const LavanderiaApp());
}

class LavanderiaApp extends StatelessWidget {
  const LavanderiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lavandería Express',
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioScreen(),
        '/chat': (context) => const ChatScreen(),
        '/historial': (context) => const HistorialScreen(),
      },
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}
