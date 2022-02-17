import 'package:flutter/material.dart';
import 'package:task_flutter_test/view/models/list_data.dart';

class MainListView extends StatelessWidget {
  const MainListView({Key? key, required this.listItem}) : super(key: key);
  final ListData listItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 5,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            height: 19,
            width: 19,
            color: Colors.blueGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
                padding: EdgeInsets.all(10), child: Text(listItem.text)),
          ),
        )
      ],
    );
  }
}
