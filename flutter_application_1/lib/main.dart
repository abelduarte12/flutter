import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart'; // Importa el archivo menu.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Promolider Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controladores para los campos de texto
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variables para manejar los estados de los checkboxes
  bool _rememberMe = false;
  bool _notRobot = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold proporciona la estructura básica de la página (como AppBar, body, etc.)
      body: Stack(
        // Stack permite colocar widgets uno encima de otro
        children: [
          // Fondo con imagen de personas en la mitad superior
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Contenido principal centrado
          Center(
            child: SingleChildScrollView(
              // SingleChildScrollView permite scroll si el contenido es muy grande
              padding: const EdgeInsets.all(20),
              child: Card(
                // Card crea un panel con bordes redondeados y sombra
                color: const Color.fromRGBO(
                  32,
                  35,
                  41,
                  1,
                ).withOpacity(1.0), // Fondo oscuro semi-transparente
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(34),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo de Promolider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/promolider_logo.png', // Asegúrate de tener esta imagen
                            width: 220,
                            height: 100,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12), // Espacio vertical
                      // Texto "Impulsa tu liderazgo, comienza ahora"
                      const Text(
                        'Impulsa tu liderazgo, comienza ahora.',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),

                      // Etiqueta de Usuario
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Usuario',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Campo de texto para el usuario
                      TextField(
                        controller: _usernameController,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Ingresar nombre de usuario',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(1.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          /* prefixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),*/
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 32, 31, 31),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Etiqueta de Contraseña
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Contraseña',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Campo de texto para la contraseña
                      TextField(
                        controller: _passwordController,
                        obscureText:
                            true, // Esto hace que se muestren asteriscos en vez del texto
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Ingresar contraseña',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(1.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          /* prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),*/
                          suffixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Fila con checkbox "Recordarme"
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                return const Color.fromRGBO(
                                  32,
                                  35,
                                  41,
                                  1,
                                ).withOpacity(1.0);
                              },
                            ),
                          ),
                          const Text(
                            'Recuérdame',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const Spacer(), // Espacio flexible
                          TextButton(
                            onPressed: () {
                              // Función para recuperar contraseña
                            },
                            child: const Text(
                              '¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 12,
                                decoration:
                                    TextDecoration
                                        .underline, // Subraya el texto
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Checkbox "No soy un Robot"
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _notRobot,
                                  onChanged: (value) {
                                    setState(() {
                                      _notRobot = value ?? false;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>((
                                        Set<MaterialState> states,
                                      ) {
                                        return const Color.fromRGBO(
                                          32,
                                          35,
                                          41,
                                          1,
                                        ).withOpacity(1.0);
                                      }),
                                ),
                                const Text(
                                  'No soy un Robot',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/recaptcha.png', // Asegúrate de tener esta imagen
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 34),

                      // Botón de Ingresar
                      ElevatedButton(
                        onPressed: () {
                          // Navega a la pantalla principal (menu.dart) al hacer clic en "Ingresar"
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(32, 35, 41, 1),
                          minimumSize: const Size(
                            double.infinity,
                            45,
                          ), // Ancho completo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 43, 219, 27),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Ingresar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Es importante liberar los recursos cuando ya no se necesitan
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
