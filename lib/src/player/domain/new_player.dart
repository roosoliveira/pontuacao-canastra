import 'package:pontuacao_canastra/shared/model.dart';
import 'package:pontuacao_canastra/shared/extensions/string_extension.dart';

class NewPlayer with Model {
  String name;
  String email;
  String password;

  NewPlayer({
    this.name,
    this.email,
    this.password,
  });

  @override
  getValue(String property) {
    if (property.equals('name')) return name;
    if (property.equals('email')) return email;
    if (property.equals('password')) return password;
  }

  @override
  void setValue(String property, value) {
    if (property.equals('name')) name = value;
    if (property.equals('email')) email = value;
    if (property.equals('password')) password = value;
  }
}
