class MoveiEntitie {
  final int id;
  final String title;
  final String backdropImagePath;
  final List<int> genreIds;
  final String overView;
  final double voteAverage;
  final String originalLanguage;
  final int voteCount;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoveiEntitie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          backdropImagePath == other.backdropImagePath &&
          genreIds == other.genreIds &&
          overView == other.overView &&
          voteAverage == other.voteAverage &&
          originalLanguage == other.originalLanguage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      backdropImagePath.hashCode ^
      genreIds.hashCode ^
      overView.hashCode ^
      voteAverage.hashCode ^
      originalLanguage.hashCode ^
      voteCount.hashCode;
}
