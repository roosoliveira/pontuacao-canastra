import 'package:pontuacao_canastra/shared/model.dart';
import 'package:pontuacao_canastra/shared/extensions/string_extension.dart';

class LoginPlayer with Model {
  String email;
  String password;

  LoginPlayer({
    this.email,
    this.password,
  });

  @override
  getValue(String property) {
    if (property.equals('email')) return email;
    if (property.equals('password')) return password;
  }

  @override
  void setValue(String property, value) {
    if (property.equals('email')) email = value;
    if (property.equals('password')) password = value;
  }
}
