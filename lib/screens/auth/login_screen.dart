import 'package:city/components/bg_city_lights.dart';
import 'package:city/components/button_lg_city_lights.dart';
import 'package:city/components/container_blur.dart';
import 'package:city/components/data_container.dart';
import 'package:city/components/data_container_pass.dart';
import 'package:city/components/logo_city_lights.dart';
import 'package:city/components/text_button_city_lights.dart';
import 'package:city/components/titles_city_lights.dart';
import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BgCityLights(),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: (Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LogoCityLights(),
                  const SizedBox(height: 10),
                  ContainerBlur(
                    children: [
                      TitlesCityLights(title: "Inicia tu sesión"),
                      const SizedBox(height: 15),
                      buildDataContainer(
                        hintText: "Correo electrónico",
                        icon: Icons.mail,
                      ),
                      const SizedBox(height: 10),
                      DataContainerPass(hintText: "Contraseña"),
                      const SizedBox(height: 20),
                      ButtonLgCityLights(
                        textButton: "Iniciar sesión",
                        onPressed: _handleLogin,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          TextButtonCityLights(
                            textButton: "¿Olvidaste tu contraseña?",
                            colors: AppColors.onSurface,
                            onPressed: () {
                              Navigator.pushNamed(context, '/reset');
                            },
                          ),
                          textGeneric(newtext: "¿O inicia sesión con: "),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialIcon("assets/icons/google.png"),
                              _socialIcon("assets/icons/google.png"),
                              _socialIcon("assets/icons/google.png"),
                            ],
                          ),
                          const SizedBox(height: 10),
                          textGeneric(newtext: "¿No tienes cuenta?"),
                          TextButtonCityLights(
                            textButton: "Regístrate",
                            colors: AppColors.tertiaryFixedDim,
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }

  Text textGeneric({required String newtext}) {
    return Text(
      newtext,
      style: TextStyle(
        fontSize: 18,
        color: AppColors.onSurface,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
    );
  }

  DataContainer buildDataContainer({
    required String hintText,
    required IconData icon,
  }) {
    return DataContainer(
      hintText: hintText,
      prefixIcon: Icon(icon, color: Colors.white.withValues(alpha: 0.7)),
    );
  }

  Widget _socialIcon(String path) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white54,
          child: Image.asset(path, height: 40),
        ),
      ),
    );
  }

  // Métodos de navegación
  void _handleLogin() {
    // Aquí puedes agregar validación del formulario
    // Por ahora mostramos mensaje de éxito y navegamos
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('¡Inicio de sesión exitoso!'),
        backgroundColor: Colors.green,
      ),
    );

    // Navegar al dashboard y remover el stack de login
    Navigator.pushReplacementNamed(context, '/admin');
  }
}
