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
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            }
        ]
    },
    {
        "title": "Практика",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            }
        ]
    },
    {
        "title": "Тесты",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            },
            {
                "dateTime": "2022...",
                "text": "главы..."
            }
        ]
    },
    {
        "title": "Сертификат",
        "chapters": [
            {
                "dateTime": "2022...",
                "text": "главы..."
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
