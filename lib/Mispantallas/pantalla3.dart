import 'package:flutter/material.dart';

class HistorialScreen extends StatelessWidget {
  const HistorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Historial'), backgroundColor: Colors.blue, foregroundColor: Colors.white),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.check_circle, color: Colors.green),
          title: Text('Orden #10${index + 1}'),
          subtitle: Text('Finalizado con éxito'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Historial'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
        onTap: (index) {
          if (index == 0) Navigator.pushReplacementNamed(context, '/');
        },
      ),
    );
  }
}