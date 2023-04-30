import 'package:flutter/material.dart';

import '../components/container_pet_card.dart';
import '../components/container_schedule_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              itemCount: 10,
              itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ContainerPetDescription(),
               );
              },
            ),
          ),
          const SizedBox(height: 60),
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              child: DefaultTabController(
                length: 2,
                child: Expanded(
                    child: Column(
                    children: [
                    TabBar(
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(
                          text: 'Next',
                        ),
                        Tab(
                          text: 'Past',
                        ),
                      ],
                    ),
                    Expanded(
                        child: TabBarView(
                          children: [
                            ListView.builder(
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return ScheduleItem();
                              },
                            ),
                            ListView.builder(
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return ScheduleItem();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(26),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
