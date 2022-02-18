part of 'chapter_bloc.dart';

@immutable
abstract class ChapterState {}

class ChapterInitial extends ChapterState {}

class ChapterStateLoading extends ChapterState {}

class ChapterStateError extends ChapterState {}

class ChapterStateLoaded extends ChapterState {
  final MainScreen mainScreen;

  ChapterStateLoaded(this.mainScreen);
}
