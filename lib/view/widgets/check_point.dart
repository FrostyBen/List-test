import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter_test/core/bloc/bloc/chapter_bloc.dart';
import 'package:task_flutter_test/core/data/api_service.dart';
import 'package:task_flutter_test/core/data/models/result_model.dart';
import 'package:task_flutter_test/view/widgets/chapter_widget.dart';

import '../models/title.dart';

class CheckPoint extends StatelessWidget {
  const CheckPoint({Key? key, required this.titleItem}) : super(key: key);
  final String? titleItem;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChapterBloc>(
      create: (BuildContext context) =>
          ChapterBloc(ApiService())..add(ChapterEventLoad()),
      child: BlocBuilder<ChapterBloc, ChapterState>(builder: (context, state) {
        if (state is ChapterStateLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 20,
                child: Text(state.chaptersData.chapters.toString()),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return ChapterWidget(
                    messageItem: state.chaptersData.chapters,
                  );
                }),
                itemCount: state.chaptersData.chapters!.length,
              ),
            ],
          );
        }
        return Container();
      }),
    );
  }
}
