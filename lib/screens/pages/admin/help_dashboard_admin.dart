import 'package:city/components/card_help_static.dart';
import 'package:city/components/container_blur.dart';
import 'package:city/components/titles_dashboards.dart';
import 'package:flutter/material.dart';

class HelpDashboardAdmin extends StatefulWidget {
  const HelpDashboardAdmin({super.key});

  @override
  State<HelpDashboardAdmin> createState() => _HelpDashboardAdminState();
}

class _HelpDashboardAdminState extends State<HelpDashboardAdmin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: TitlesDashboards(title: 'Centro de Ayuda'),
        ),
        Expanded(
          flex: 1,
          child: Scrollbar(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                cardHelpContent(
                  "911",
                  "Numero de la policia",
                  Colors.black,
                  Colors.lightGreenAccent,
                ),
                SizedBox(height: 10),
                cardHelpContent(
                  "123",
                  "Numero de los bomberos",
                  Colors.white,
                  Colors.redAccent,
                ),
                SizedBox(height: 10),
                cardHelpContent(
                  "800 - 10 - 10",
                  "Numero de la compañia de agua EPSAS",
                  Colors.white,
                  Colors.blue,
                ),
                SizedBox(height: 10),
                cardHelpContent(
                  "800 - 10 - 10",
                  "Numero de la compañia de luz ENDE",
                  Colors.black,
                  Colors.amberAccent,
                ),
                SizedBox(height: 10),
                cardHelpContent(
                  "800 - 10 - 10",
                  "Numero de la compañia del software",
                  Colors.black,
                  Colors.white,
                ),
                SizedBox(height: 10),
                cardHelpContent(
                  "800 - 10 - 10",
                  "Numero de la compañia de internet",
                  Colors.white,
                  Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
        // Sección scrolleable con blur debajo
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Scrollbar(
              child: ListView(
                children: [
                  ContainerBlur(
                    children: [
                      // Puedes poner aquí el contenido que desees mostrar con blur
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Otra sección de ayuda o información adicional aquí.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  CardHelpStatic cardHelpContent(
    String title,
    String description, [
    Color? colorTextCard,
    Color? colorBgCard,
  ]) {
    return CardHelpStatic(
      colorBgCard: colorBgCard,
      title: title,
      description: description,
      colorTextCard: colorTextCard,
    );
  }
}
