import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  Movie(this.id, this.originalTitle, this.overview, this.title, posterPath) {
    this.posterPath = 'https://image.tmdb.org/t/p/w200/' + posterPath;
  }

  int id;
  @JsonKey(name: 'original_name', nullable: true)
  String originalTitle;
  @JsonKey(nullable: true)
  String title;
  String overview;
  @JsonKey(name: "poster_path", nullable: true)
  String posterPath;

  String get originalName => title ?? originalTitle;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
