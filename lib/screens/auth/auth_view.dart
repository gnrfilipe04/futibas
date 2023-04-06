import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_button.dart';
import 'package:futibas/widgets/my_input.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    TapGestureRecognizer regosterRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("Terms and condition tapped");
      };

    onPressed() {}

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Image.asset('assets/Logo.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      MyInput(label: 'E-mail'),
                      SizedBox(
                        height: 10,
                      ),
                      MyInput(label: 'Senha'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Esqueci a senha'),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  MyButton(
                      onPressed: onPressed,
                      title: 'Entrar',
                      titleColor: MyColors.dark,
                      bgColor: MyColors.primary)
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Ainda não tem conta? ',
                children: <TextSpan>[
                  TextSpan(
                      text: 'Registre-se',
                      recognizer: regosterRecognizer,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: MyColors.primary)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
