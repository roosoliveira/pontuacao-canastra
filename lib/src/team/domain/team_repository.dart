import 'package:pontuacao_canastra/src/player/domain/player.dart';
import 'package:pontuacao_canastra/src/team/domain/team.dart';

abstract class TeamRepository {
  Future<Team> write(Team team);
  Future<bool> addPlayer(Team team, Player player);
}
