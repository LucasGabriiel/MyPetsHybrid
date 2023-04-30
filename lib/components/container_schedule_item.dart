import 'package:flutter/material.dart';
import 'package:my_pets/model/ScheduleAppointment.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem(this.appointment, {super.key});
  final ScheduleAppointment appointment;
  
  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context).colorScheme;

    return  Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                appointment.name,
                style: TextStyle(
                        color: currentTheme.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                      ),
              const SizedBox(width: 8),
              Text("${appointment.date} at ${appointment.hour}",
                   style: const TextStyle(fontSize: 10)
                   ),
            ]),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(appointment.description, style: TextStyle(fontSize: 12)),
                Row(children: [
                  const Text("Address: ", style: TextStyle(fontSize: 12)),
                  Text(appointment.address, style: TextStyle(fontSize: 10))
                ])
              ],),
            ),
          ]
      ),
    );
  }
}