import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter_test/core/bloc/bloc/chapter_bloc.dart';
import 'package:task_flutter_test/core/data/api_service.dart';
import 'package:task_flutter_test/core/data/models/result_model.dart';
import 'package:task_flutter_test/view/models/message.dart';

import '../models/title.dart';

class ChapterWidget extends StatelessWidget {
  const ChapterWidget({Key? key, required this.messageItem}) : super(key: key);
  final List<Chapters>? messageItem;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChapterBloc>(
      create: (BuildContext context) => ChapterBloc(ApiService()),
      child: BlocBuilder<ChapterBloc, ChapterState>(
        builder: (context, state) {
          if (state is ChapterStateLoaded) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ChapterStateLoaded) {
            return Row(
              children: [
                const SizedBox(
                  height: 20,
                  width: 20,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    // width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(state.chaptersData.chapters.toString()),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          }

          return Container(
            child: Text('sadasd'),
          );
        },
      ),
    );
  }
}
