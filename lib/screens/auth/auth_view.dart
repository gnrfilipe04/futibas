import 'package:flutter/material.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/auth/auth_view_model.dart';
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
  final AuthViewModel authViewModel = provider<AuthViewModel>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  Image.asset('assets/Logo4x.png',
                      width: 157, height: 40, fit: BoxFit.contain),
                  const SizedBox(
                    height: 10,
                  ),
                  Form(
                    key: authViewModel.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MyInput(
                          label: 'E-mail',
                          validatorMethod: authViewModel.validatorEmail,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MyInput(
                          label: 'Senha',
                          validatorMethod: authViewModel.validatorPass,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () {
                              print('esqueceu a senha');
                            },
                            splashFactory: NoSplash.splashFactory,
                            child: const Text('Esqueci a senha')),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  MyButton(
                      onPressed: () => authViewModel.onSubmit(context: context),
                      title: 'Entrar',
                      titleColor: MyColors.dark,
                      bgColor: MyColors.primary),
                  const SizedBox(
                    height: 10,
                  ),
                  MyButton(
                      icon: const Icon(
                        Icons.email,
                        color: MyColors.secondary,
                      ),
                      onPressed: () => authViewModel.toHome(),
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
                      recognizer: authViewModel.regosterRecognizer,
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
