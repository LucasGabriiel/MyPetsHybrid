import 'package:flutter/material.dart';

class ContainerPetDescription extends StatelessWidget {
  const ContainerPetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        height: 193,
        width: 328,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF064C72),
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
                const SizedBox(height: 16,),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF064C72),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0xFFEEEEEE))
                  ),
                  width: 84,
                  height: 30,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){},
                            child: const Center(
                              child: Text(
                                "Teste",
                                style: TextStyle(
                                    color: Color(0xFFEEEEEE),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
