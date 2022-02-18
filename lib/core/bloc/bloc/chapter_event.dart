part of 'chapter_bloc.dart';

@immutable
abstract class ChapterEvent {}

class GetChapter extends ChapterEvent {
  final ApiService _apiService;

  GetChapter(this._apiService);
  Object? get props => [_apiService];
}
