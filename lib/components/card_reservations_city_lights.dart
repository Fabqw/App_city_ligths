import 'package:flutter/material.dart';

class CardReservationsCityLights extends StatefulWidget {
  const CardReservationsCityLights({super.key});

  @override
  State<CardReservationsCityLights> createState() =>
      _CardReservationsCityLightsState();
}

class _CardReservationsCityLightsState
    extends State<CardReservationsCityLights> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reserva #12345',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Fecha: 25 de diciembre de 2024',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 5),
          Text(
            'Hora: 8:00 PM',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 5),
          Text(
            'Mesa para 4 personas',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                // Acción al cancelar la reserva
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Cancelar Reserva'),
            ),
          ),
        ],
      ),
    );
  }
}
