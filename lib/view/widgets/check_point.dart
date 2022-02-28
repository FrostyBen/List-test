import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter_test/core/bloc/bloc/chapter_bloc.dart';
import 'package:task_flutter_test/core/data/api_service.dart';
import 'package:task_flutter_test/core/data/models/result_model.dart';
import 'package:task_flutter_test/view/widgets/chapter_widget.dart';

import '../models/title.dart';

class CheckPoint extends StatelessWidget {
  const CheckPoint({Key? key, required this.item}) : super(key: key);
  final ChaptersData item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          
          child: Container(
            
          
           
            width: MediaQuery.of(context).size.width *0.91,
            height: 40,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 0, 0),
                child: Text(item.title!),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return ChapterWidget(
              messageItem: item.chapters![index],
            );
          }),
          itemCount: item.chapters!.length,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
