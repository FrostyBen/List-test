part of 'chapter_bloc.dart';

@immutable
abstract class ChapterState {}

class ChapterInitial extends ChapterState {}

class ChapterStateLoading extends ChapterState {
  Object? get props => [];
}

class ChapterStateError extends ChapterState {
  Object? get props => [];
}

class ChapterStateLoaded extends ChapterState {
  final List<ChaptersData> chaptersData;

  ChapterStateLoaded(this.chaptersData);
  Object? get props => [chaptersData];
}
