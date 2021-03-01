import 'package:pontuacao_canastra/src/player/domain/player.dart';
import 'package:pontuacao_canastra/src/team/domain/team_repository.dart';

class Team {
  String name;
  List<Player> players;
  TeamRepository teamRepository;

  Team({
    this.name,
    this.players,
    this.teamRepository,
  });

  Team.withName(this.name);

  Future<Team> addPlayer(Player player) async {
    if (await teamRepository.addPlayer(this, player)) {
      players.add(player);
    }
    return this;
  }
}
