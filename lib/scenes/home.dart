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
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
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
          const SizedBox(height: 180),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                children: [
                  Material(
                  color: Colors.indigo,
                  child: TabBar(
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
              ),
            )
          ),
        ],
      ),
    );
  }
}
