import 'package:flutter/material.dart';
import 'package:flutter_application_1/marketplace_1.dart';

void main() {
  runApp(MaterialApp(home: CourseCard()));
}

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 15, 15, 15),
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseRegistrationScreen(),
              ),
            );
          },
        ),

        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de usuario dentro de un círculo
              SizedBox(
                width: 10,
              ), // Espacio entre el logo de usuario y el logo de Promolider
              // Logo de Promolider
              Image.asset('assets/promolider_logo.png', width: 140),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Positioned(
                        top:
                            50.0, // Ajusta la posición vertical según sea necesario
                        left: 10.0,
                        right: 10.0,
                        child: AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'Compartir el Curso',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Enlace de la página :',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'https://promolider.org/',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Compartir en redes sociales',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          /* actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cerrar'),
                            ),
                          ],*/
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),

          /* IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Positioned(
                        top:
                            50.0, // Ajusta la posición vertical según sea necesario
                        left: 10.0,
                        right: 10.0,
                        child: AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'COMPARTIR CURSO',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Enlace de la página',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'https://promolider.org/',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Compartir en redes sociales',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          /* actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cerrar'),
                            ),
                          ],*/
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),*/

          /* IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Positioned(
                        top:
                            50.0, // Ajusta la posición vertical según sea necesario
                        left: 10.0,
                        right: 10.0,
                        child: AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          content: Text(
                            'COMPARTIR CURSO',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cerrar'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),*/
          IconButton(
            icon: Icon(Icons.download, color: Colors.white),
            onPressed: () {
              // Acción para descargar
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image (Placeholder)
            Stack(
              children: [
                Image.asset(
                  'assets/prueba_modelo.jpg', // Ruta a la imagen local
                  width: double.infinity,
                  height: 270,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  bottom: 50, // Ajustar la posición vertical
                  left: 10,
                  child: Text(
                    'Categoría: Programación',
                    style: TextStyle(
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    'C# .NET AVANZADO',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Iconos de compartir y descarga
              ],
            ),

            // Course Details
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Date Display

                  // Title
                  Text(
                    'Descripción',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  // Horizontal Divider
                  Divider(color: Colors.grey[300], height: 24, thickness: 1),

                  // Description
                  Text(
                    'Este curso de programación en C# está diseñado para principiantes y desarrolladores con conocimientos básicos que desean aprender a crear aplicaciones robustas y eficientes. A largo del curso, explorarás los fundamentos del lenguaje, incluyendo sintaxis, estructuras de control, programación orientada a objetos y manipulación de datos.',
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),

                  SizedBox(height: 16),

                  SizedBox(height: 8),

                  // Objectives Container with Subtle Shadow
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Objetivos',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        ObjectiveItem('Conocer la Sintaxis básica de C#'),
                        ObjectiveItem(
                          'Entender los fundamentos de la programación orientada a objetos',
                        ),
                        ObjectiveItem('Crear una aplicación simple en C#'),
                      ],
                    ),
                  ),

                  SizedBox(height: 44),

                  // Registration Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navega a la pantalla principal (prueba_1.dart) al hacer clic en "Registrar"
                        /*  Navigator.push(
                          context,
                         /* MaterialPageRoute(
                            builder: (context) => CourseRegistrationScreen(),
                          ),*/
                        );*/
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ), // Borde verde
                        padding: EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Archivos de la Masterclass',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Widget for Objective Items
class ObjectiveItem extends StatelessWidget {
  final String text;

  const ObjectiveItem(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline, color: Colors.purple, size: 20),
          SizedBox(width: 8),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
