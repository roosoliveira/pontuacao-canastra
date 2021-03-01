import 'package:pontuacao_canastra/shared/id.dart';

class Name extends ID<String> {
  String _value;

  Name(String name) : super(TypeID.NAME) {
    _value = name;
  }

  @override
  String getID() {
    return _value;
  }
}
