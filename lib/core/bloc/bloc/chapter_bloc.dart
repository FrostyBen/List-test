import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_flutter_test/view/screens/main_screen.dart';

part 'chapter_event.dart';
part 'chapter_state.dart';

class ChapterBloc extends Bloc<ChapterEvent, ChapterState> {
  ChapterBloc() : super(ChapterInitial()) {
    on<ChapterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
