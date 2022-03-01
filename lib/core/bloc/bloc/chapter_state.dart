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
  final bool checkboxValue;

  ChapterStateLoaded(this.chaptersData, this.checkboxValue);
  Object? get props => [chaptersData];


}
