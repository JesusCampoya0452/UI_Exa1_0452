import 'package:flutter/material.dart';

// --- PANTALLA INICIAL: DETALLE DE SERVICIO (Basado en tu 2do dibujo) ---

class InicioScreen extends StatelessWidget {

  const InicioScreen({super.key});



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text('Detalle del Servicio'),

        backgroundColor: const Color(0xFF43A047), // Verde

        foregroundColor: Colors.white,

      ),

      body: SingleChildScrollView(

        child: Column(

          children: [

            const SizedBox(height: 20),

            // Círculo del dibujo

            const CircleAvatar(

              radius: 55,

              backgroundColor: Color(0xFF1E88E5), // Azul

              backgroundImage: NetworkImage(

                'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/refs/heads/main/lavado.png',

              ),

            ),

            const SizedBox(height: 10),

            const Text(

              'Servicio de Lavado',

              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

            ),

            const Divider(thickness: 1, indent: 50, endIndent: 50),

            

            // Sección "Virtual Event" adaptada a Lavandería

            Padding(

              padding: const EdgeInsets.all(16.0),

              child: Container(

                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(

                  border: Border.all(color: Colors.grey.shade300),

                  borderRadius: BorderRadius.circular(10),

                ),

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    const Text('Próxima Entrega', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

                    const SizedBox(height: 10),

                    const Row(

                      children: [

                        Icon(Icons.access_time, color: Colors.blue),

                        SizedBox(width: 10),

                        Text('Hoy - 9:00 PM', style: TextStyle(fontSize: 16)),

                      ],

                    ),

                    const SizedBox(height: 15),

                    ElevatedButton(

                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),

                      onPressed: () => Navigator.pushNamed(context, '/historial'),

                      child: const Text('VER MIS PEDIDOS'),

                    ),

                  ],

                ),

              ),

            ),



            // Sección "About Me" adaptada a Lavandería

            const Padding(

              padding: EdgeInsets.symmetric(horizontal: 20),

              child: Align(

                alignment: Alignment.centerLeft,

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text('Información del Local', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

                    Divider(color: Colors.blue),

                    Text(

                      'Jesus Campoya 6J',

                      style: TextStyle(color: Colors.black54),

                    ),

                  ],

                ),

              ),

            ),

          ],

        ),

      ),

      // Botón flotante para ir al chat (la 1ra pantalla de tu dibujo)

      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.blue,

        onPressed: () => Navigator.pushNamed(context, '/chat'),

        child: const Icon(Icons.chat, color: Colors.white),

      ),

    );

  }

}
