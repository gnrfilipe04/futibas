import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_button.dart';
import 'package:futibas/widgets/my_input.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  Image.asset('assets/Logo4x.png', width: 157, height: 40, fit: BoxFit.contain),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const MyInput(label: 'E-mail'),
                      const SizedBox(
                        height: 10,
                      ),
                      const MyInput(label: 'Senha'),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){ print('esqueceu a senha'); },
                        child: const Text('Esqueci a senha')
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  MyButton(
                      onPressed: onPressed,
                      title: 'Entrar',
                      titleColor: MyColors.dark,
                      bgColor: MyColors.primary),
                  const SizedBox(height: 10,),
                  MyButton(
                      icon: const Icon(Icons.email, color: MyColors.secondary,),
                      onPressed: onPressed,
                      title: 'Entrar com google',
                      titleColor: MyColors.secondary,
                      bgColor: MyColors.darkSecondary)
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Ainda não tem conta? ',
                style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
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
