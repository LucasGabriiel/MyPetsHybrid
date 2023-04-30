import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context).colorScheme;

    return  Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                "Schedule title", 
                style: TextStyle(
                        color: currentTheme.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                      ),
              const SizedBox(width: 8),
              Text("00/00/0000 at 00:00",
                   style: const TextStyle(fontSize: 10)
                   )
            ]),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Schedule description here", style: TextStyle(fontSize: 12)),
                Row(children: [
                  const Text("Address: ", style: TextStyle(fontSize: 12)),
                  Text(" Street xxxxxxxxxxx", style: TextStyle(fontSize: 10))
                ])
              ],),
            ),
          ],),
      ),
    );
  }
}