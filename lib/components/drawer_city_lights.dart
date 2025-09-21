import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class DrawerCityLights extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const DrawerCityLights({super.key, required this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.tertiaryContainer.withValues(alpha: 0.825),
      width: 250,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          _buildDrawerHeader(),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildMenuItem(
                  context: context,
                  icon: Icons.dashboard,
                  title: 'Inicio',
                  index: 0,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.content_paste_rounded,
                  title: 'Alquileres',
                  index: 1,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.apartment,
                  title: 'Departamentos',
                  index: 2,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.construction,
                  title: 'Servicios',
                  index: 3,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.local_cafe,
                  title: 'Espacios comunes',
                  index: 4,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.attach_money,
                  title: 'Finanzas',
                  index: 5,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.help_outline,
                  title: 'Ayuda',
                  index: 6,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.settings,
                  title: 'Configuración',
                  index: 7,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.person,
                  title: 'Perfil',
                  index: 8,
                ),
                _buildMenuItem(
                  context: context,
                  icon: Icons.power_settings_new,
                  title: 'Cerrar sesión',
                  index: 9,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return SizedBox(
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/icons/city_user_generic.png',
                ),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                'Usuario',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'usuario@citylight.com',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required int index,
  }) {
    final isSelected = currentIndex == index;

    return Container(
      margin: const EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
        /*borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),*/
        color: isSelected
            ? AppColors.onPrimaryFixedVariant.withValues(alpha: 0.60)
            : null,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: title == "Cerrar sesión"
              ? Colors.red
              : (isSelected ? AppColors.onSurface : Colors.white70),
          size: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: title == "Cerrar sesión"
                ? Colors.red
                : (isSelected ? AppColors.onSurface : Colors.white70),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
        onTap: () {
          if (title != "Cerrar sesión") {
            Navigator.pop(context);
            onTap?.call(index);
          } else {
            Navigator.pop(context); // Cerrar dialog
            _showLogoutDialog(context);
          }
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cerrar sesión'),
          content: const Text('¿Estás seguro de que deseas cerrar sesión?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Cerrar dialog
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false,
                );
              },
              child: const Text(
                'Cerrar sesión',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
