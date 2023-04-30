
import '../model/Pet.dart';

abstract class MockDataBase {
  static List<Pet> pets = [ 
    Pet("Jake", "9", "03/10/2014", "O-", "Jake.jpeg", "07/05/2023", ["weak bones", "chicken allergy"]),
    Pet("Diana", "1", "22/02/2022", "A-", "Diana.jpeg", "19/06/2023", ["Peanut Allergy"]),
    Pet("Jubileu", "4", "07/12/2019", "O+", "Jubileu.jpeg", "10/07/2023", ["bee allergy"])
  ];
}