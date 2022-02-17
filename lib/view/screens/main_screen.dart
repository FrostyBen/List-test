import 'package:flutter/material.dart';
import 'package:task_flutter_test/view/models/list_data.dart';
import 'package:task_flutter_test/view/widgets/main_list_view.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  List<ListData> listMsg = [
    ListData('2022-05-06: Глава 1.1 - 1.3 ISTQB'),
    ListData('2022-05-08: Глава 1.4 - 1.5 ISTQB'),
    ListData('2022-05-06: Глава 1.1 - 1.3 ISTQB'),
    ListData('2022-05-06: Глава 1.1 - 1.3 ISTQB'),
    ListData('2022-05-06: Глава 1.1 - 1.3 ISTQB')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Карьерный навигатор'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                  'Ваша индивидуальная программа обучения составлена, можно приступать'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 35,
            child: Card(
              elevation: 60,
              child:
                  Padding(padding: EdgeInsets.all(4), child: Text('Практика')),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MainListView(
                  listItem: listMsg[index],
                );
              },
              itemCount: listMsg.length,
            ),
          ),
        ],
      ),
    );
  }
}
