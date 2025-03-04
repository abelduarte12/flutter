import 'package:flutter/material.dart';

// La función main() es el punto de inicio de todas las aplicaciones Flutter
void main() {
  runApp(const MyApp());
}

// MyApp es un StatelessWidget que representa toda la aplicación
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp es el widget raíz que proporciona muchas funcionalidades básicas
    return MaterialApp(
      title: 'Promolider App',
      debugShowCheckedModeBanner: false, // Quita el banner de "debug"
      home: const PromoLiderScreen(), // Mostramos nuestra pantalla simple
    );
  }
}

// Pantalla simple que muestra solo el logo centrado
class PromoLiderScreen extends StatelessWidget {
  const PromoLiderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // El cuerpo de la pantalla
      body: Container(
        width: double.infinity, // Ocupa todo el ancho disponible
        height: double.infinity, // Ocupa todo el alto disponible
        color: const Color(
          0xFF202329,
        ), // Color de fondo oscuro como en la imagen
        // Centra el contenido horizontalmente y verticalmente
        child: Center(
          // Aquí puedes usar una de estas dos opciones:

          // OPCIÓN 1: Si tienes una imagen del logo completo (incluyendo el texto)
          child: Image.asset(
            'assets/promolider_logo.png', // Ruta a la imagen del logo
            width: 200, // Puedes ajustar el tamaño según necesites
          ),
        ),
      ),
    );
  }
}
