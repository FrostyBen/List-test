import 'package:flutter/material.dart';
import 'package:task_flutter_test/view/models/message.dart';
import 'package:intl/intl.dart';
import '../models/title.dart';

class ChapterWidget extends StatelessWidget {
  const ChapterWidget({Key? key, required this.messageItem}) : super(key: key);
  final Message messageItem;
  @override
  Widget build(BuildContext context) {
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
                  Text(
                    DateFormat('yyyy-MM-dd').format(messageItem.date),
                  ),
                  Text(messageItem.text),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
