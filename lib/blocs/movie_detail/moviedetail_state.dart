import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:whats_movies/domains/movie_detail.dart';

@immutable
abstract class MovieDetailState extends Equatable {
  MovieDetailState([List props = const []]) : super(props);
}

class InitialMovieDetailState extends MovieDetailState {

  @override
  String toString() => 'InitialDetailMovieState';
}

class LoadingMovieDetailState extends MovieDetailState {

  @override
  String toString() => 'LoadingDetailMovieState';
}

class LoadedMovieDetailState extends MovieDetailState {

  final MovieDetail detailMovie;

  LoadedMovieDetailState(this.detailMovie);

  @override
  String toString() => 'LoadedDetailMovieState { title: ${detailMovie.title} }';
}

class ErrorMovieDetailState extends MovieDetailState {

  @override
  String toString() => 'ErrorDetailMovieState';
}