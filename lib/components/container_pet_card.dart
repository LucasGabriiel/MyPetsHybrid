import 'package:flutter/material.dart';
import 'package:my_pets/my_pets_app.dart';

class ContainerPetDescription extends StatelessWidget {
  const ContainerPetDescription({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context).colorScheme;

    return  Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        height: 193,
        width: 328,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: currentTheme.tertiary,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16 ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16 ),
                  child: Row(
                    children: const [
                      Text("Pet Name",
                          style: TextStyle(
                            color: Color(0xFFEEEEEE),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,)
                      )
                    ],
                  ),
                ),
                const Text ("Age:",
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,)
                ),
                const Text ("Birth Date:",
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,)
                ),
                const Text ("Next Schedule:",
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,)
                ),
                const Text ("Bloody tipe:",
                    style: TextStyle(
                      color: Color(0xFFEEEEEE),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,)
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: SizedBox(height: 30, 
                  child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {                  
                         return Padding(
                           padding: const EdgeInsets.only(right: 8.0),
                           child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: const Color(0xFFEEEEEE))
                              ),
                              width: 84,
                              height: 30,
                              child: const Center(child: Text('Teste')),
                            ),
                         );
                        }
                    ),
                    ),
                )
              ]
          ),
        ),
      ),
    );
  }
}
