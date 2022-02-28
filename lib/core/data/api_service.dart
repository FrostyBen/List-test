import 'dart:convert';

import 'package:task_flutter_test/core/bloc/bloc/chapter_bloc.dart';
import 'package:task_flutter_test/core/data/models/result_model.dart';

class ApiService {
  String jsonString = '''[
    {
        "title": "Теория",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            }
        ]
    },
    {
        "title": "Практика",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            }
        ]
    },
    {
        "title": "Тесты",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            },
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            }
        ]
    },
    {
        "title": "Сертификат",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "Главы 1.1 - 1.3 ISTQB"
            }
        ]
    }
    
    
]''';
  Future<List<ChaptersData>> getChapters() async {
    return ChaptersData.getListMap(
      jsonDecode(jsonString),
    );
  }
}
