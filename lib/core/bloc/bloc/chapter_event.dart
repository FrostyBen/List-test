part of 'chapter_bloc.dart';

@immutable
abstract class ChapterEvent {}

class GetChapter extends ChapterEvent {
  final String title;
  final String chapter;

  GetChapter(this.title, this.chapter);
}
