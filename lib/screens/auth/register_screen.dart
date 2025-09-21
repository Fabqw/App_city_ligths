import 'package:city/components/bg_city_lights.dart';
import 'package:city/components/button_lg_city_lights.dart';
import 'package:city/components/checkbox_city_ligths.dart';
import 'package:city/components/container_blur.dart';
import 'package:city/components/data_container.dart';
import 'package:city/components/data_container_pass.dart';
import 'package:city/components/logo_city_lights.dart';
import 'package:city/components/titles_city_lights.dart';
import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _termsAccepted = false;

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
                      TitlesCityLights(title: "Unirse a City Lights"),
                      const SizedBox(height: 15),
                      buildDataContainer(
                        hintText: "Nombre completo",
                        icon: Icons.person,
                      ),
                      const SizedBox(height: 15),
                      buildDataContainer(
                        hintText: "Correo electrónico",
                        icon: Icons.mail,
                      ),
                      const SizedBox(height: 15),
                      DataContainerPass(hintText: "Contraseña"),
                      const SizedBox(height: 15),
                      DataContainerPass(hintText: "Repita la contraseña"),
                      const SizedBox(height: 15),
                      CheckboxCityLigths(
                        value: _termsAccepted,
                        onChanged: (value) {
                          setState(() {
                            _termsAccepted = value ?? false;
                          });
                        },
                        label: "Acepto los términos y condiciones",
                      ),
                      const SizedBox(height: 15),
                      ButtonLgCityLights(
                        textButton: "Registrarse",
                        onPressed: _termsAccepted ? _handleRegister : null,
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

  // Método para manejar el registro
  void _handleRegister() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Registro exitoso!, queda verificarlo'),
        backgroundColor: Colors.greenAccent,
      ),
    );

    Navigator.pushNamed(context, '/verify');
  }
}
