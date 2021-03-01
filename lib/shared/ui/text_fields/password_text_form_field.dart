import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pontuacao_canastra/shared/model.dart';
import 'package:pontuacao_canastra/shared/ui/text_fields/model_text_form_field.dart';

class PasswordModelTextFormField extends StatelessWidget {
  final Model model;
  final String property;
  final String labelText;
  final TextInputAction textInputAction;
  final bool isRequired;

  const PasswordModelTextFormField({
    @required this.model,
    @required this.property,
    this.labelText,
    this.textInputAction,
    this.isRequired = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModelTextFormField(
      model: model,
      property: property,
      labelText: labelText ?? 'Senha',
      autocorrect: false,
      obscureText: true,
      prefixIcon: Icon(Icons.lock),
      textInputAction: textInputAction,
      isRequired: isRequired,
    );
  }
}
