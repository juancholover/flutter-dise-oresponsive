import 'package:app_ventas/src/presentation/widgets/DeafaultTextField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // ✅ Mueve contenido cuando aparece teclado
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // 🔹 Fondo
            Image.asset(
              'assets/img/fondito.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),

            // 🔹 Contenido centrado y scrollable
            SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 500, // ✅ limita el ancho máximo del contenido
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 24,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 125,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(height: 16),

                        // 🔹 Campo correo
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          child: DeafaultTextField(
                            label: 'Correo Electrónico',
                            icon: Icons.email,
                            onChanged: (text) {
                              print('Correo: $text');
                            },
                          ),
                        ),
                        const SizedBox(height: 16),

                        // 🔹 Campo contraseña
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          child: DeafaultTextField(
                            label: 'Contraseña',
                            icon: Icons.lock,
                            onChanged: (text) {
                              print('Contraseña: $text');
                            },
                            obscureText: true,
                          ),
                        ),
                        const SizedBox(height: 25),

                        // 🔹 Botón iniciar sesión
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 8,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'menu');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'INICIAR SESIÓN',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // 🔹 Separador
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 65,
                              height: 1,
                              color: Colors.white,
                              margin: const EdgeInsets.only(right: 5),
                            ),
                            const Text(
                              'No tienes cuenta?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Container(
                              width: 65,
                              height: 1,
                              color: Colors.white,
                              margin: const EdgeInsets.only(left: 5),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        // 🔹 Botón registrarse
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'REGÍSTRATE',
                              style: TextStyle(color: Colors.white),
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
      ),
    );
  }
}
