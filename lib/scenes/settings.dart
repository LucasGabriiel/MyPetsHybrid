import 'package:flutter/material.dart';
import 'package:my_pets/assets/styles.dart';

class Settings extends StatelessWidget {
    final options = [
      "Color Scheme",
      "Logout",
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Pets'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
            child: Text(options[index],style: const TextStyle(color: Colors.black),),
          );
        }
        )
    );
  }
}