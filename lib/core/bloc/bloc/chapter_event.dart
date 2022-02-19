part of 'chapter_bloc.dart';

@immutable
abstract class ChapterEvent {}

class ChapterEventLoad extends ChapterEvent {
  Object? get props => [];
}
