import 'package:pontuacao_canastra/src/game/domain/game.dart';

abstract class GameRepository {
  Future<Game> write(Game game);
}
