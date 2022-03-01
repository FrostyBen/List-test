import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:task_flutter_test/core/data/models/result_model.dart';

class ApiService {
  
  Future<List<ChaptersData>> getChapters() async {
    return ChaptersData.getListMap(
      jsonDecode(await rootBundle.loadString('json/json_data.json')),
    );
  }
}
