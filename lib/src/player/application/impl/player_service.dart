import 'package:pontuacao_canastra/shared/helpers.dart';
import 'package:pontuacao_canastra/src/player/application/player_facade.dart';
import 'package:pontuacao_canastra/src/player/domain/exceptions/player_cannot_be_found_exception.dart';
import 'package:pontuacao_canastra/src/player/domain/new_player.dart';
import 'package:pontuacao_canastra/src/player/domain/new_team.dart';
import 'package:pontuacao_canastra/src/player/domain/other_player.dart';
import 'package:pontuacao_canastra/src/player/domain/player.dart';
import 'package:pontuacao_canastra/src/team/domain/team.dart';

class PlayerService extends PlayerFacade {
  @override
  Future<Team> createTeam(NewTeam newTeam) async {
    final player = newTeam.adminPlayer;
    final team = await Team.withName(newTeam.name).addPlayer(player);
    return player.register(team);
  }

  @override
  Future<void> add(OtherPlayer otherPlayer) async {
    final team = otherPlayer.team;
    final player = await Player().findPlayerBy(otherPlayer.id);

    if (isNull(player)) {
      throw PlayerCannotBeFoundException();
    }

    await team.addPlayer(player);
  }

  @override
  Future<Player> createAccountTo(NewPlayer newPlayer) {
    return Player().createAccout(newPlayer);
  }
}
