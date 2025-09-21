import 'package:flutter/material.dart';

class CommonSpacesDashboardAdmin extends StatefulWidget {
  const CommonSpacesDashboardAdmin({super.key});

  @override
  State<CommonSpacesDashboardAdmin> createState() =>
      _CommonSpacesDashboardAdminState();
}

class _CommonSpacesDashboardAdminState
    extends State<CommonSpacesDashboardAdmin> {
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
                '¡Bienvenido a City Lights! \n Espacios comunes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Gestiona tu rentas del edificio desde aquí',
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
