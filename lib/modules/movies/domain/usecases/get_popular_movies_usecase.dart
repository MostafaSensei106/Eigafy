import '../entities/movei_entitie.dart' show MoveiEntitie;
import '../repository/base_movie_repository.dart' show BaseMovieRepository;

class GetPopularMoviesUsecase {
  GetPopularMoviesUsecase(this.baseRepository);
  final BaseMovieRepository baseRepository;

  Future<List<MoveiEntitie>> call() async =>
      await baseRepository.getPopularMovies();
}
