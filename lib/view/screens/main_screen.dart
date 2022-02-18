import 'package:flutter/material.dart';
import 'package:task_flutter_test/view/models/message.dart';
import 'package:task_flutter_test/view/widgets/check_point.dart';

import '../models/title.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  List<Titles> listMsg = [
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Теория'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Практика'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Сертификат'),
    Titles(chapters: [
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
      Message(date: DateTime.now(), text: 'Глава 1.1 - 1.3 ISTQB'),
    ], title: 'Тесты'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Карьерный навигатор'),
        ),
      ),
      body: CustomScrollView(
        slivers: [
         
          SliverAnimatedList(
            initialItemCount: listMsg.length,
            itemBuilder: ((context, index, animation) {
              return Transform.scale(
                scale: animation.value,
                child: CheckPoint(titleItem: listMsg[index]),
              );
            }),
          ),
        ],
      ),
    );
  }
}
