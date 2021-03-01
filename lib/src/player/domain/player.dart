import 'package:pontuacao_canastra/shared/id.dart';
import 'package:pontuacao_canastra/src/player/domain/new_player.dart';
import 'package:pontuacao_canastra/src/player/domain/player_repository.dart';
import 'package:pontuacao_canastra/src/team/domain/team.dart';
import 'package:pontuacao_canastra/src/team/domain/team_repository.dart';

class Player {
  String name;
  String email;
  TeamRepository teamRepository;
  PlayerRepository playerRepository;

  Player({
    this.name,
    this.email,
    this.teamRepository,
  });

  Future<Team> register(Team team) {
    return teamRepository.write(team);
  }

  Future<Player> findPlayerBy(ID id) {
    return playerRepository.findBy(id);
  }

  Future<Player> createAccout(NewPlayer newPlayer) async {
    name = newPlayer.name;
    email = newPlayer.email;

    if (await playerRepository.register(newPlayer)) {
      await playerRepository.write(this);
    }
    return this;
  }
}
