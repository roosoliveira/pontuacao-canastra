import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pontuacao_canastra/shared/ui/text_fields/model_text_form_field.dart';
import 'package:pontuacao_canastra/shared/ui/text_fields/password_text_form_field.dart';
import 'package:pontuacao_canastra/shared/ui/ui_constants.dart';
import 'package:pontuacao_canastra/src/player/domain/login_player.dart';

class LoginPage extends StatelessWidget {
  final LoginPlayer player = LoginPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(PADDING_PX),
          child: Form(
            child: Column(
              children: [
                ModelTextFormField(
                  model: player,
                  property: 'email',
                  labelText: 'E-mail',
                  prefixIcon: Icon(Icons.email),
                  isRequired: true,
                ),
                PasswordModelTextFormField(
                  model: player,
                  property: 'password',
                  labelText: 'Senha',
                  textInputAction: TextInputAction.done,
                  isRequired: true,
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(PADDING_PX),
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ENTRAR', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(PADDING_PX),
                  child: InkWell(
                    child: Text(
                      'Não sou cadastrado ainda',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
