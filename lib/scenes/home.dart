import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Pets'),
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
                return Container(
                  width: 340,
                  height: 170,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 60),
          Expanded(
            child: Container(
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
                                return ListTile(
                                  title: Text('Item $index'),
                                );
                              },
                            ),
                            ListView.builder(
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text('Item ${index + 20}'),
                                );
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
