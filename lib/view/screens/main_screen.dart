import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter_test/core/bloc/bloc/chapter_bloc.dart';
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
      body: BlocBuilder<ChapterBloc, ChapterState>(
        builder: (context, state) {
          if (state is ChapterStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ChapterStateLoaded) {
            return CustomScrollView(
              slivers: [
                SliverAnimatedList(
                  initialItemCount: state.chaptersData.title!.length,
                  itemBuilder: ((context, index, animation) {
                    return Transform.scale(
                      scale: animation.value,
                      child: CheckPoint(titleItem: state.chaptersData.chapters),
                    );
                  }),
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
