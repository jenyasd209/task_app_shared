// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovieState extends MovieState {
  @override
  final bool isLoading;
  @override
  final BuiltList<Movie> movies;

  factory _$MovieState([void Function(MovieStateBuilder) updates]) =>
      (new MovieStateBuilder()..update(updates)).build();

  _$MovieState._({this.isLoading, this.movies}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('MovieState', 'isLoading');
    }
    if (movies == null) {
      throw new BuiltValueNullFieldError('MovieState', 'movies');
    }
  }

  @override
  MovieState rebuild(void Function(MovieStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieStateBuilder toBuilder() => new MovieStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieState &&
        isLoading == other.isLoading &&
        movies == other.movies;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isLoading.hashCode), movies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieState')
          ..add('isLoading', isLoading)
          ..add('movies', movies))
        .toString();
  }
}

class MovieStateBuilder implements Builder<MovieState, MovieStateBuilder> {
  _$MovieState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  ListBuilder<Movie> _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie> movies) => _$this._movies = movies;

  MovieStateBuilder();

  MovieStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _movies = _$v.movies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieState;
  }

  @override
  void update(void Function(MovieStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieState build() {
    _$MovieState _$result;
    try {
      _$result = _$v ??
          new _$MovieState._(isLoading: isLoading, movies: movies.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
