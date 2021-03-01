import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pontuacao_canastra/shared/helpers.dart';
import 'package:pontuacao_canastra/shared/model.dart';
import 'package:pontuacao_canastra/shared/ui/ui_constants.dart';
import 'package:pontuacao_canastra/shared/ui/validations/required_ui_validate.dart';
import 'package:pontuacao_canastra/shared/ui/validations/ui_validate.dart';

class ModelTextFormField extends StatelessWidget {
  final Model model;
  final String property;
  final bool obscureText;
  final bool autocorrect;
  final String labelText;
  final Icon prefixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool isRequired;
  final List<UIValidate> validations = List<UIValidate>();

  ModelTextFormField({
    @required this.model,
    @required this.property,
    this.obscureText,
    this.autocorrect,
    this.labelText,
    this.prefixIcon,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.isRequired = false,
    List<UIValidate> validations,
  }) : super() {
    if (isNotNull(validations) || isNotEmpty(validations)) {
      this.validations.addAll(validations);
    }

    if (isRequired) {
      this.validations.add(RequiredUIValidate());
    }
  }

  @override
  Widget build(BuildContext context) {
    final formFieldkey = GlobalKey<FormFieldState>();
    final focusNode = FocusNode();
    return Padding(
      padding: const EdgeInsets.only(bottom: PADDING_PX),
      child: TextFormField(
        key: formFieldkey,
        obscureText: obscureText ?? false,
        autocorrect: autocorrect ?? true,
        initialValue: model.getValue(property),
        focusNode: focusNode,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          filled: true,
        ),
        onChanged: (value) {
          model.setValue(property, value);
        },
        keyboardType: keyboardType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.next,
        validator: _validator(context),
        onEditingComplete: () {
          if (_validate(formFieldkey) &&
              textInputAction == TextInputAction.next) focusNode.nextFocus();
        },
      ),
    );
  }

  bool _validate(GlobalKey<FormFieldState> formFieldkey) {
    return formFieldkey.currentState.validate();
  }

  Function _validator(BuildContext context) {
    return (String value) {
      for (final validator in validations) {
        if (not(validator.isValid(value))) return validator.getMessage(context);
      }
    };
  }
}
