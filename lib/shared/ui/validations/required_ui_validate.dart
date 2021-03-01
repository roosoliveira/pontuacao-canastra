import 'package:flutter/src/widgets/framework.dart';
import 'package:pontuacao_canastra/shared/helpers.dart';
import 'package:pontuacao_canastra/shared/ui/validations/ui_validate.dart';

class RequiredUIValidate extends UIValidate {
  @override
  String getMessage(BuildContext context) {
    return 'Campo requirido';
  }

  @override
  bool isValid(value) {
    return isNotEmpty(value ?? '');
  }
}
