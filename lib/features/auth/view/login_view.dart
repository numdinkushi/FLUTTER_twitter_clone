import 'package:flutter/material.dart';
import 'package:twitter_clone/common/ui_constants.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // AuthField(controller: emailController),
              // AuthField(controller: passwordController)
            ],
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
