
import '../model/Pet.dart';

abstract class MockDataBase {
  static List<Pet> pets = [ 
    Pet("Jake", "9", "03/10/2014", "O-", "Jake.jpeg"),
    Pet("Jake", "9", "03/10/2014", "O-", "Jubileu.jpeg"),
  ];
}