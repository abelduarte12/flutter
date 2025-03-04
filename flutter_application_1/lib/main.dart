import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp es un StatelessWidget que representa toda la aplicación
// StatelessWidget significa que este widget no cambia su estado internamente
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp es el widget raíz que proporciona muchas funcionalidades básicas
    return MaterialApp(
      title: 'Promolider Login',
      debugShowCheckedModeBanner:
          false, // Esto elimina el banner de "debug" en la esquina
      theme: ThemeData(
        // Configuración del tema de la aplicación
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const LoginPage(), // Definimos la página de inicio
    );
  }
}

// LoginPage es un StatefulWidget porque necesitamos manejar estados como
// el texto ingresado en los campos de usuario y contraseña
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
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.black54)),
        backgroundColor: Colors.white,
        elevation: 0, // Sin sombra en el AppBar
      ),
      body: Stack(
        // Stack permite colocar widgets uno encima de otro
        children: [
          // Fondo con imagen de personas
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background.jpg',
                ), // Asegúrate de tener esta imagen en tu carpeta assets
                fit: BoxFit.cover,
                opacity: 0.7, // Opacidad para que se vea ligeramente
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
                color: Colors.black.withOpacity(
                  0.8,
                ), // Fondo oscuro semi-transparente
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Logo de Promolider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/promolider_logo.png', // Asegúrate de tener esta imagen
                            width: 190,
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
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Ingresar nombre de usuario',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
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
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Ingresar contraseña',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white,
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
                                return Colors.green;
                              },
                            ),
                          ),
                          const Text(
                            'Recordarme',
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
                                color: Colors.green,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Checkbox "No soy un Robot"
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
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
                                    return Colors.white;
                                  }),
                              checkColor: Colors.green,
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
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                'assets/recaptcha.png', // Asegúrate de tener esta imagen
                                height: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Botón de Ingresar
                      ElevatedButton(
                        onPressed: () {
                          // Aquí iría la lógica para validar el login
                          print('Usuario: ${_usernameController.text}');
                          print('Contraseña: ${_passwordController.text}');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(
                            double.infinity,
                            50,
                          ), // Ancho completo
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
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
