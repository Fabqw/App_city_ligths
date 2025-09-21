import 'package:city/components/bg_city_lights.dart';
import 'package:city/components/button_lg_city_lights.dart';
import 'package:city/components/container_blur.dart';
import 'package:city/components/data_container.dart';
import 'package:city/components/data_container_num.dart';
import 'package:city/components/logo_city_lights.dart';
import 'package:city/components/titles_city_lights.dart';
import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
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
                      TitlesCityLights(title: "Código de verificación"),
                      const SizedBox(height: 15),
                      buildDataContainer(
                        hintText: "Correo electrónico",
                        icon: Icons.mail,
                      ),
                      const SizedBox(height: 15),
                      buildDataContainerNum(
                        hintText: "Código de 6 dígitos",
                        icon: Icons.dialpad,
                      ),
                      const SizedBox(height: 20),
                      ButtonLgCityLights(
                        textButton: "Verificar código",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ContainerBlur(
                    children: [
                      textGeneric(
                        newtext:
                            "Ingresa tu correo electrónico y el código que enviamos a tu correo eléctornico para finalizar el registro.",
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

  DataContainerNum buildDataContainerNum({
    required String hintText,
    required IconData icon,
  }) {
    return DataContainerNum(
      hintText: hintText,
      prefixIcon: Icon(icon, color: Colors.white.withValues(alpha: 0.7)),
    );
  }
}
