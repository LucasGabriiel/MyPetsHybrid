import 'package:flutter/material.dart';
import 'package:my_pets/assets/styles.dart';

class Settings extends StatelessWidget {
    const Settings({super.key});

    static const options = [
      "Color Scheme",
      "Backup account",
      "Delete account",
      "Logout",
    ];

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context).colorScheme;


    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pets'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(color: Styles.listSeparator, height: (index == 0 ? 0 : 1)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
                child: Text(options[index],
                            style: Styles.optionsText.copyWith(color: currentTheme.surface)
                            ),
              ),
            ],
          );
        }
        )
    );
  }
}