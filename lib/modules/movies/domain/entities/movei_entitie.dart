import 'package:equatable/equatable.dart';

class MoveiEntitie extends Equatable {
  const MoveiEntitie({
    required this.id,
    required this.title,
    required this.backdropImagePath,
    required this.genreIds,
    required this.overView,
    required this.voteAverage,
    required this.originalLanguage,
    required this.voteCount,
  });

  final int id;
  final String title;
  final String backdropImagePath;
  final List<int> genreIds;
  final String overView;
  final double voteAverage;
  final String originalLanguage;
  final int voteCount;

  @override
  List<Object> get props => [
    id,
    title,
    backdropImagePath,
    genreIds,
    overView,
    voteAverage,
    originalLanguage,
    voteCount,
  ];
}
