import 'package:flutter/material.dart';

class StartDashboarAdmin extends StatefulWidget {
  const StartDashboarAdmin({super.key});

  @override
  State<StartDashboarAdmin> createState() => _StartDashboarAdminState();
}

class _StartDashboarAdminState extends State<StartDashboarAdmin> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '¡Bienvenido a City Lights! todo en un solo lugar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Gestiona tu edificio desde aquí',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
        ),
        // Aquí puedes agregar más widgets para el inicio
      ],
    );
  }
}
