import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:task_app_shared/src/models/movie.dart';

part 'movie_state.g.dart';

abstract class MovieState implements Built<MovieState, MovieStateBuilder> {
  MovieState._();

  factory MovieState([void Function(MovieStateBuilder) updates]) = _$MovieState;

  factory MovieState.initial() =>
      MovieState((MovieStateBuilder builder) => builder
        ..isLoading = false
        ..movies = BuiltList<Movie>().toBuilder());

  factory MovieState.setMovies(MovieState state, List<Movie> movies) => state
      .rebuild((b) => b..movies = BuiltList<Movie>.from(movies).toBuilder());

//      MovieState((MovieStateBuilder builder) =>
//          builder..movies = BuiltList<Movie>.from(movies));

  bool get isLoading;

  BuiltList<Movie> get movies;
}
