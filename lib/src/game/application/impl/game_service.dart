import 'package:pontuacao_canastra/src/game/application/game_facade.dart';
import 'package:pontuacao_canastra/src/game/domain/game.dart';
import 'package:pontuacao_canastra/src/game/domain/new_game.dart';

class GameService extends GameFacade {
  @override
  Future<Game> register(NewGame newGame) async {
    final teamOne = newGame.teamOne;
    final teamTwo = newGame.teamTwo;
    final game = Game()
      ..withThe(teamOne)
      ..andWith(teamTwo);

    return await game.register();
  }
}
