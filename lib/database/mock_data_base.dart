import '../model/Pet.dart';
import '../model/ScheduleItem.dart';

abstract class MockDataBase {
  static List<Pet> pets = [ 
    Pet("Jake", "9", "03/10/2014", "O-", "Jake.jpeg", "07/05/2023", ["weak bones", "chicken allergy"]),
    Pet("Diana", "1", "22/02/2022", "A-", "Diana.jpeg", "19/06/2023", ["Peanut Allergy"]),
    Pet("Jubileu", "4", "07/12/2019", "O+", "Jubileu.jpeg", "10/07/2023", ["bee allergy"])
  ];

  static List<ScheduleAppointment> nextSchedules = [
    ScheduleAppointment("Jake", "07/05/23", "14:20", "Blood test, fast for at least 8 hours ", "Rua Santo Antonio" ),
    ScheduleAppointment("Diana", "19/06/23" ,"08:30", "Routine exams, bring stool sample and saliva sample", "Rua Santo Antonio"),
    ScheduleAppointment("Jubileu", "10/07/23", "09:45", "Allergy to some food, fasting for 12 hours, blood test and observation", "Rua Santo Antonio"),
    ScheduleAppointment("Jake", "07/08/23", "16:20", "Blood test, fast for at least 8 hours ", "Rua Santo Antonio" ),
    ScheduleAppointment("Diana", "19/09/23" ,"11:30", "Routine exams, bring stool sample and saliva sample", "Rua Santo Antonio"),
    ScheduleAppointment("Jubileu", "10/09/23", "07:45", "Allergy to some food, fasting for 12 hours, blood test and observation", "Rua Santo Antonio")
  ];

  static List<ScheduleAppointment> pastSchedules = [
    ScheduleAppointment("Diana", "10/04/23" ,"09:00", "Allergy to some food, fasting for 12 hours, blood test and observation", "Rua Santo Antonio"),
    ScheduleAppointment("Jubileu", "12/11/22", "13:00","Blood test, fast for at least 8 hours ", "Rua Santo Antonio"),
    ScheduleAppointment("Jake", "18/12/22", "18:20", "Routine exams, bring stool sample and saliva sample", "Rua Santo Antonio"),
    ScheduleAppointment("Diana", "03/12/21" ,"09:00", "Allergy to some food, fasting for 12 hours, blood test and observation", "Rua Santo Antonio"),
  ];
}