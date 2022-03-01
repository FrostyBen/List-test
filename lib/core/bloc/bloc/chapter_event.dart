part of 'chapter_bloc.dart';

@immutable
abstract class ChapterEvent {}

class ChapterEventLoad extends ChapterEvent {
  Object? get props => [];
}
class CheckBoxEvent extends ChapterEvent{
  Object? get props =>[];
}