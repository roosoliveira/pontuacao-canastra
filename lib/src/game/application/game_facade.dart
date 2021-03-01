import 'package:pontuacao_canastra/src/game/domain/game.dart';
import 'package:pontuacao_canastra/src/game/domain/new_game.dart';

abstract class GameFacade {
  Future<Game> register(NewGame newGame);
}
