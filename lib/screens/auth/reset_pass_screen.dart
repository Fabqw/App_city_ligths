import 'package:city/components/bg_city_lights.dart';
import 'package:city/components/button_lg_city_lights.dart';
import 'package:city/components/container_blur.dart';
import 'package:city/components/data_container.dart';
import 'package:city/components/logo_city_lights.dart';
import 'package:city/components/titles_city_lights.dart';
import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class ResetPassScreen extends StatefulWidget {
  const ResetPassScreen({super.key});

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
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
                      TitlesCityLights(title: "Reestrablecer contraseña"),
                      buildDataContainer(
                        hintText: "Correo electrónico",
                        icon: Icons.mail,
                      ),
                      const SizedBox(height: 20),
                      ButtonLgCityLights(
                        textButton: "Enviar correo",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ContainerBlur(
                    children: [
                      textGeneric(
                        newtext:
                            "Ingresa tu correo electrónico y te enviaremos un correo eléctronico para reestablecer tu contraseña.",
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
        fontSize: 16,
        color: AppColors.onSurface,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      textAlign: TextAlign.justify,
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
}
