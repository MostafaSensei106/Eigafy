import '../entities/movei_entitie.dart';

abstract class AbstractMovieRepository {
  Future<List<MoveiEntitie>> getNowPlayingMovies();

  Future<List<MoveiEntitie>> getPopularMovies();

  Future<List<MoveiEntitie>> getTopRatedMovies();
}
