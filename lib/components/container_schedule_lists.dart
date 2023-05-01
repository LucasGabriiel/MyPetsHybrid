import 'package:flutter/material.dart';
import 'package:my_pets/assets/styles.dart';
import 'package:my_pets/model/schedlue_appointment.dart';
import 'container_schedule_item.dart';


class SchedulerListContainer extends StatelessWidget {
  const SchedulerListContainer(this.nextScheduledAppointments, this.pastScheduledAppointments, {super.key});
  
  final List<ScheduleAppointment> nextScheduledAppointments;
  final List<ScheduleAppointment> pastScheduledAppointments;

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context).colorScheme;

    return Container(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: currentTheme.tertiary,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 18.0),
                    child: Text("Schedule", style: Styles.header1.copyWith(color: currentTheme.primary)),
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
            );
  }

}