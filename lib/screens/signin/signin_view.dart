import 'package:flutter/material.dart';
import 'package:futibas/app/app_provider.dart';
import 'package:futibas/screens/signin/signin_view_model.dart';
import 'package:futibas/services/NavigationService.dart';
import 'package:futibas/theme/my_colors.dart';
import 'package:futibas/widgets/my_button.dart';
import 'package:futibas/widgets/my_input.dart';
import 'package:futibas/widgets/my_title.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  SignInViewModel signInViewModel = provider<SignInViewModel>();
  NavigationService navigationService = provider<NavigationService>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => {
            navigationService.goback()
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: MyColors.secondary,
            size: 24,
          ),
        )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyTitle(value: 'Criar conta', fontSize: 16),
              const SizedBox( height: 20,),
              Form(
                key: signInViewModel.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyInput(label: 'Nome', onChanged: signInViewModel.setName, validatorMethod: (value) => signInViewModel.validateRequired(value, 'Nome'),),
                    const SizedBox( height: 10, ),
                     MyInput(label: 'Posição', onChanged: signInViewModel.setPosition, validatorMethod: (value) => signInViewModel.validateRequired(value, 'Posição'),),
                    const SizedBox( height: 10,),
                    MyInput(label: 'Nota', onChanged: signInViewModel.setNote, validatorMethod: (value) => signInViewModel.validateRequired(value, 'Nota'),),
                    const SizedBox( height: 10,),
                    MyInput(label: 'Pontuação geral', onChanged: signInViewModel.setOverall, validatorMethod: (value) => signInViewModel.validateRequired(value, 'Pontuação geral'),),
                    const SizedBox( height: 10,),
                    MyInput(label: 'Contato', onChanged: signInViewModel.setContact, validatorMethod: (value) => signInViewModel.validateRequired(value, 'Contato'),),
                    const SizedBox( height: 10,),
                    MyInput(label: 'Usuário', onChanged: signInViewModel.setUsername, validatorMethod: (value) => signInViewModel.validateRequired(value, 'Usuário'),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: MyButton(
                        title: 'Criar',
                        bgColor: MyColors.primary,
                        titleColor: MyColors.dark,
                        onPressed: signInViewModel.sendForm,
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}