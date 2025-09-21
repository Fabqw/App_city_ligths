import 'package:flutter/material.dart';

class ProfileDashboardAdmin extends StatefulWidget {
  const ProfileDashboardAdmin({super.key});

  @override
  State<ProfileDashboardAdmin> createState() => _ProfileDashboardAdminState();
}

class _ProfileDashboardAdminState extends State<ProfileDashboardAdmin> {
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
                '¡Bienvenido a City Lights! \n Perfil de administrador',
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
      ],
    );
  }
}
