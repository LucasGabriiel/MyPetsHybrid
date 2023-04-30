import 'package:flutter/material.dart';
import 'package:my_pets/components/container_pets_list.dart';
import 'package:my_pets/components/container_schedule_lists.dart';
import 'package:my_pets/database/mock_data_base.dart';
import 'package:my_pets/model/ScheduleAppointment.dart';

import '../model/Pet.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Pet> petsList = MockDataBase.pets;
  final List<ScheduleAppointment> nextScheduledAppointments = MockDataBase.nextSchedules;
  final List<ScheduleAppointment> pastScheduledAppointments = MockDataBase.pastSchedules;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pets'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          PetListContainer(petsList),
          const SizedBox(height: 60),
          Expanded(
            child: SchedulerListContainer(nextScheduledAppointments, pastScheduledAppointments)
          ),
        ],
      ),
    );
  }
}
