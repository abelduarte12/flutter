import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Este es el widget raíz de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Promolider',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const PromoHomePage(),
      debugShowCheckedModeBanner: false, // Quita el banner de debug
    );
  }
}

class PromoHomePage extends StatelessWidget {
  const PromoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 15, 15, 15),
        elevation: 0,
        title: Center(
          child:
          // Logo de Promolider
          Image.asset('assets/promolider_logo.png', width: 140),
        ),
        actions: [
          // Icono de búsqueda
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          // Icono de menú
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección de categorías
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categorías',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Ver todo >', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            // Lista horizontal de categorías
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildCategoryItem(
                    Icons.storage,
                    'Base de Datos',
                    Colors.blue,
                  ),
                  SizedBox(width: 16),
                  _buildCategoryItem(Icons.wifi, 'Redes', Colors.blue),
                  SizedBox(width: 16),
                  _buildCategoryItem(
                    Icons.computer,
                    'Programación',
                    Colors.purple,
                  ),
                  SizedBox(width: 16),
                  _buildCategoryItem(Icons.headphones, 'Audio', Colors.red),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Grid de cursos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.75,
                children: [
                  _buildCourseCard(
                    'Masterclass de C# .NET AVANZADO',
                    'Profesor/a Administrador De Profesores',
                    '10 horas y 22 minutos',
                    5.0,
                    'A', // Letra de la categoría
                    Colors.red, // Color de la categoría (rojo)
                    true, // Tiene descarga
                  ),
                  _buildCourseCard(
                    'Masterclass De DBA PostgreSQL',
                    'Profesor/a Administrador De Profesores',
                    '10 horas y 20 minutos',
                    5.0,
                    'P',
                    Colors.green,
                    false,
                  ),
                  _buildCourseCard(
                    'Masterclass de C# .NET AVANZADO',
                    'Profesor/a Administrador De Profesores',
                    '10 horas y 30 minutos',
                    5.0,
                    'A',
                    Colors.red,
                    true,
                  ),
                  _buildCourseCard(
                    'Masterclass de C# .NET AVANZADO',
                    'Profesor/a Administrador De Profesores',
                    '15 horas y 20 minutos',
                    5.0,
                    'A',
                    Colors.red,
                    true,
                  ),
                ],
              ),
            ),

            // Paginación
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPageButton('1', true),
                  _buildPageButton('2', false),
                  _buildPageButton('3', false),
                  _buildPageButton('4', false),
                  _buildPageButton('5', false),
                  Text(' ... '),
                  _buildPageButton('>', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir los elementos de categoría
  Widget _buildCategoryItem(IconData icon, String title, Color color) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 4),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  // Método para construir las tarjetas de cursos
  Widget _buildCourseCard(
    String title,
    String author,
    String duration,
    double rating,
    String letter,
    Color letterBgColor,
    bool hasDownload,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen del curso con letra de categoría
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/curso_market.jpg',
                    ), // Imagen corregida
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              if (hasDownload)
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.download, color: Colors.white, size: 16),
                  ),
                ),
            ],
          ),

          // Información del curso
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  author,
                  style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 12, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      duration,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir los botones de paginación
  Widget _buildPageButton(String text, bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.transparent,
        border: Border.all(color: isActive ? Colors.green : Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.grey,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
