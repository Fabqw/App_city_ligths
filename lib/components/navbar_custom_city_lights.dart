import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class NavbarCustomCityLights extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;
  const NavbarCustomCityLights({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<NavbarCustomCityLights> createState() => _NavbarCustomCityLightsState();
}

class _NavbarCustomCityLightsState extends State<NavbarCustomCityLights> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.0,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
        ),
        backgroundColor: AppColors.tertiaryContainer,
        selectedItemColor: AppColors.onSurface,
        items: [
          navButtonItem(Icons.dashboard, 'Inicio'),
          navButtonItem(Icons.content_paste_rounded, 'Alquileres'),
          navButtonItem(Icons.apartment, 'Departamentos'),
          navButtonItem(Icons.construction, 'Servicios'),
          navButtonItem(Icons.local_cafe, 'Espacios comunes'),
          navButtonItem(Icons.attach_money, 'Finanzas'),
        ],
      ),
    );
  }

  BottomNavigationBarItem navButtonItem(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
