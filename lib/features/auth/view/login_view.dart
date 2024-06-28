import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/ui_constants.dart';
import 'package:twitter_clone/features/auth/widget/auth_field.dart';
import 'package:twitter_clone/theme/pallete.dart';
// import 'package:twitter_clone/features/auth/widget/auth_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthField(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                const SizedBox(height: 30),
                Align(
                    alignment: Alignment.topRight,
                    child: RoundedSmallButton(
                      onTap: () {},
                      label: 'Done',
                    )),
                const SizedBox(height: 30),
                RichText(
                  text: const TextSpan(
                    text: "Dont't have an account?",
                    children: [
                      TextSpan(
                          text: ' Sign Up',
                          style: TextStyle(color: Pallete.blueColor)),
                    ],
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

class ReUsableAppBar extends StatelessWidget {
  const ReUsableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
