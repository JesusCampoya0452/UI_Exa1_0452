import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Soporte'), backgroundColor: Colors.blue, foregroundColor: Colors.white),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFF1E88E5),
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/asistente-ejecutivo%20(1).jpg',
              ),
            ),
          const Text('Asistente Virtual', style: TextStyle(fontWeight: FontWeight.bold)),
          const Divider(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: const [
                Text("Asistente: ¡Hola! ¿En qué te ayudo?"),
                Align(alignment: Alignment.centerRight, child: Text("Usuario: ¿Mi ropa está lista?")),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: " Escribe aquí...",
              suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
            ),
          ),
        ],
      ),
    );
  }
}