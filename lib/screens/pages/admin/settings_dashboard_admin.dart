import 'package:flutter/material.dart';

class SettingsDashboardAdmin extends StatefulWidget {
  const SettingsDashboardAdmin({super.key});

  @override
  State<SettingsDashboardAdmin> createState() => _SettingsDashboardAdminState();
}

class _SettingsDashboardAdminState extends State<SettingsDashboardAdmin> {
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
                '¡Bienvenido a City Lights! \n ajustes de administrador',
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
