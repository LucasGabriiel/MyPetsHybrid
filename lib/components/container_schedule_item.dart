import 'package:flutter/material.dart';
import 'package:my_pets/assets/styles.dart';
import 'package:my_pets/model/schedlue_appointment.dart';

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
                style: Styles.header3.copyWith(color: currentTheme.primary)
                ),
              const SizedBox(width: 8),
              Text("${appointment.date} at ${appointment.hour}",
                   style: Styles.body2
                   ),
            ]),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(appointment.description, style: Styles.body1),
                Row(children: [
                  const Text("Address: ", style: Styles.body1),
                  Text(appointment.address, style: Styles.body2)
                ])
              ],),
            ),
          ]
      ),
    );
  }
}