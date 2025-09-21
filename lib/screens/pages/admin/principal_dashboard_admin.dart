import 'package:city/components/bg_city_lights.dart';
import 'package:city/components/drawer_city_lights.dart';
import 'package:city/screens/pages/admin/common_spaces_dashboard_admin.dart';
import 'package:city/screens/pages/admin/finance_dashboard_admin.dart';
import 'package:city/screens/pages/admin/help_dashboard_admin.dart';
import 'package:city/screens/pages/admin/management_dashboard_admin.dart';
import 'package:city/screens/pages/admin/profile_dashboard_admin.dart';
import 'package:city/screens/pages/admin/rentals_dashboard_admin.dart';
import 'package:city/screens/pages/admin/services_dashboard_admin.dart';
import 'package:city/screens/pages/admin/settings_dashboard_admin.dart';
import 'package:city/screens/pages/admin/start_dashboar_admin.dart';
import 'package:flutter/material.dart';

class PrincipalDashboardAdmin extends StatefulWidget {
  const PrincipalDashboardAdmin({super.key});

  @override
  State<PrincipalDashboardAdmin> createState() =>
      _PrincipalDashboardAdminState();
}

class _PrincipalDashboardAdminState extends State<PrincipalDashboardAdmin> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: DrawerCityLights(currentIndex: currentIndex, onTap: onTap),
      body: Stack(
        children: [
          BgCityLights(),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: _buildPageContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageContent() {
    switch (currentIndex) {
      case 0:
        return _buildStartContent();
      case 1:
        return _buildRentalsContent();
      case 2:
        return _buildManagementContent();
      case 3:
        return _buildServicesContent();
      case 4:
        return _buildCommonSpacesContent();
      case 5:
        return _buildFinanceContent();
      case 6:
        return _buildHelpContent();
      case 7:
        return _buildSettingsContent();
      case 8:
        return _buildProfileContent();
      default:
        return _buildStartContent();
    }
  }

  // Contenido de la página de inicio
  Widget _buildStartContent() {
    return StartDashboarAdmin();
  }

  // Placeholders para otras páginas
  Widget _buildRentalsContent() {
    return RentalsDashboardAdmin();
  }

  Widget _buildManagementContent() {
    return ManagementDashboardAdmin();
  }

  Widget _buildServicesContent() {
    return ServicesDashboardAdmin();
  }

  Widget _buildCommonSpacesContent() {
    return CommonSpacesDashboardAdmin();
  }

  Widget _buildFinanceContent() {
    return FinanceDashboardAdmin();
  }

  Widget _buildProfileContent() {
    return ProfileDashboardAdmin();
  }

  Widget _buildSettingsContent() {
    return SettingsDashboardAdmin();
  }

  Widget _buildHelpContent() {
    return HelpDashboardAdmin();
  }
}
