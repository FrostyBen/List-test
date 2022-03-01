import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_flutter_test/core/data/api_service.dart';
import 'package:task_flutter_test/core/data/models/result_model.dart';
import 'package:task_flutter_test/view/screens/main_screen.dart';

part 'chapter_event.dart';
part 'chapter_state.dart';

class ChapterBloc extends Bloc<ChapterEvent, ChapterState> {
  final ApiService apiService;
  ChapterBloc(this.apiService) : super(ChapterInitial()) {
    on<ChapterEventLoad>((event, emit) async {
      emit(ChapterStateLoading());
      final _chapters = await apiService.getChapters();
      var _checkBoxValue = false;
      emit(ChapterStateLoaded(_chapters,_checkBoxValue));
    });
  }
}
