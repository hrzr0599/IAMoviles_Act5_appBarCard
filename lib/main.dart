import 'package:flutter/material.dart';

void main() => runApp(const AppHospital());

class AppHospital extends StatelessWidget {
  const AppHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hospital App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Medico(),
    );
  }
}

class Medico extends StatelessWidget {
  const Medico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 129, 10, 10),),
        drawer: Drawer(),
                body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // La tarjeta solicitada
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                // Color Azul Aero (Hex: #7CB9E8)
                color: const Color(0xFF7CB9E8), 
                child: const SizedBox(
                  width: 300,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/051/682/846/non_2x/doctor-icon-colored-outline-icon-style-icon-related-to-medical-health-elements-illustration-vector.jpg', // Imagen de ejemplo
                      ),
                    ),
                    title: Text(
                      'Hernandez Roman',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      'Titular en Neurocirugía',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
    
  }
}
