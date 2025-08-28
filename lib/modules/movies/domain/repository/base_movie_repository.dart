import '../entities/movei_entitie.dart' show MoveiEntitie;

abstract class BaseMovieRepository {
  Future<List<MoveiEntitie>> getNowPlayingMovies();

  Future<List<MoveiEntitie>> getPopularMovies();

  Future<List<MoveiEntitie>> getTopRatedMovies();
}
