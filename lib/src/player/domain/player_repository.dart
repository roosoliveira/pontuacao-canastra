import 'package:pontuacao_canastra/shared/id.dart';
import 'package:pontuacao_canastra/src/player/domain/new_player.dart';
import 'package:pontuacao_canastra/src/player/domain/player.dart';

abstract class PlayerRepository {
  Future<Player> findBy(ID id);
  Future<bool> register(NewPlayer newPlayer);
  Future<Player> write(Player player);
}
