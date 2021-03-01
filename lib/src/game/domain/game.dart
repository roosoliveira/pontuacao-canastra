import 'package:pontuacao_canastra/src/game/domain/game_repository.dart';
import 'package:pontuacao_canastra/src/team/domain/team.dart';

class Game {
  Team teamOne;
  Team teamTwo;
  List<Match> matches;
  DateTime date;
  GameRepository gameRepository;

  Game({
    this.teamOne,
    this.teamTwo,
    this.matches,
    this.gameRepository,
  }) {
    date = DateTime.now();
    matches = List<Match>();
  }

  void withThe(Team team) {
    teamOne = team;
  }

  void andWith(Team team) {
    teamTwo = team;
  }

  Future<Game> register() {
    return gameRepository.write(this);
  }
}
