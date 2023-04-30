import 'package:flutter/material.dart';
import 'package:my_pets/database/mock_data_base.dart';
import 'package:my_pets/model/ScheduleItem.dart';

import '../components/container_pet_card.dart';
import '../components/container_schedule_item.dart';
import '../model/Pet.dart';

class HomePage extends StatelessWidget {
  List<Pet> petsList = MockDataBase.pets;
  List<ScheduleAppointment> nextScheduledAppointments = MockDataBase.nextSchedules;
  List<ScheduleAppointment> pastScheduledAppointments = MockDataBase.pastSchedules;

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context).colorScheme;


    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pets'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          SizedBox(
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
          ),
          const SizedBox(height: 60),
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: currentTheme.tertiary,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 18.0),
                    child: Text("Schedule", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Expanded(
                        child: Column(
                        children: [
                        TabBar(
                          indicatorColor: currentTheme.surface,
                          tabs: const [
                            Tab(
                              text: 'Next',
                            ),
                            Tab(
                              text: 'Past',
                            ),
                          ],
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                              child: TabBarView(
                                children: [
                                  ListView.builder(
                                    itemCount: nextScheduledAppointments.length,
                                    itemBuilder: (context, index) {
                                      return ScheduleItem(nextScheduledAppointments[index]);
                                    },
                                  ),
                                  ListView.builder(
                                    itemCount: pastScheduledAppointments.length,
                                    itemBuilder: (context, index) {
                                      return ScheduleItem(pastScheduledAppointments[index]);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
