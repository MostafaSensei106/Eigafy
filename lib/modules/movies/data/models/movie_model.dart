import '../../domain/entities/movei_entitie.dart';

class MovieModel extends MoveiEntitie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backdropImagePath,
    required super.genreIds,
    required super.overView,
    required super.voteAverage,
    required super.originalLanguage,
    required super.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    id: json['id'],
    title: json['title'],
    backdropImagePath: json['backdrop_path'],
    genreIds: List<int>.from(json['genre_ids'].map((x) => x)),
    overView: json['overview'],
    voteAverage: json['vote_average'].toDouble(),
    originalLanguage: json['original_language'],
    voteCount: json['vote_count'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'backdrop_path': backdropImagePath,
    'genre_ids': List<dynamic>.from(genreIds.map((x) => x)),
    'overview': overView,
    'vote_average': voteAverage,
    'original_language': originalLanguage,
    'vote_count': voteCount,
  };
}
