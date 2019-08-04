import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:task_app_shared/src/api_service.dart';
import 'package:task_app_shared/src/store/movie_event.dart';
import 'package:task_app_shared/src/store/movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  ApiService _apiService = ApiService();

  void dispatchGetMovies(){
    dispatch(GetMovies());
  }

  @override
  MovieState get initialState => MovieState.initial();

  @override
  Stream<MovieState> mapEventToState(MovieEvent event) async* {
    if (event is GetMovies) {
      Completer completer = Completer();
      _apiService.getMovies().listen((movies) {
        completer.complete(movies);
      });
      List movies = await completer.future;
      yield MovieState.setMovies(currentState, movies);
    }
  }
}
