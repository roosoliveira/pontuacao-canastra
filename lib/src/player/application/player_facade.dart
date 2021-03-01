import 'package:pontuacao_canastra/src/player/domain/new_player.dart';
import 'package:pontuacao_canastra/src/player/domain/new_team.dart';
import 'package:pontuacao_canastra/src/player/domain/other_player.dart';
import 'package:pontuacao_canastra/src/player/domain/player.dart';
import 'package:pontuacao_canastra/src/team/domain/team.dart';

abstract class PlayerFacade {
  Future<Team> createTeam(NewTeam newTeam);
  Future<void> add(OtherPlayer otherPlayer);
  Future<Player> createAccountTo(NewPlayer newPlayer);
}
