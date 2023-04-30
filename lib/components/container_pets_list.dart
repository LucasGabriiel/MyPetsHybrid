import 'package:flutter/material.dart';

import '../model/Pet.dart';
import 'container_pet_card.dart';

class PetListContainer extends StatelessWidget {
  const PetListContainer(this.petsList, {super.key});
  
  final List<Pet> petsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: petsList.length,
              itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ContainerPetDescription(petsList[index]),
               );
              },
            ),
          );
  }
  
}