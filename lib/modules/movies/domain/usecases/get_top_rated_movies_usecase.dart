import '../entities/movei_entitie.dart' show MoveiEntitie;
import '../repository/base_movie_repository.dart' show BaseMovieRepository;

class GetTopRatedMoviesUsecase {
  GetTopRatedMoviesUsecase({required this.baseMovieRepository});
  final BaseMovieRepository baseMovieRepository;
  Future<List<MoveiEntitie>> call() => baseMovieRepository.getTopRatedMovies();
}
