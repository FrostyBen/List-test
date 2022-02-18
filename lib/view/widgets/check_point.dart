import 'package:flutter/material.dart';
import 'package:task_flutter_test/view/widgets/chapter_widget.dart';

import '../models/title.dart';

class CheckPoint extends StatelessWidget {
  const CheckPoint({Key? key, required this.titleItem}) : super(key: key);
  final Titles titleItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 20,
          child: Text(titleItem.title),
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return ChapterWidget(
              messageItem: titleItem.chapters[index],
            );
          }),
          itemCount: titleItem.chapters.length,
        ),
      ],
    );
  }
}
