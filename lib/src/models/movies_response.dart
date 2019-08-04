import 'package:json_annotation/json_annotation.dart';
import 'package:task_app_shared/src/models/movie.dart';

part 'movies_response.g.dart';

@JsonSerializable(nullable: true)
class MoviesResponse {
  MoviesResponse(this.results);

  List<Movie> results;

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesResponseToJson(this);
}
