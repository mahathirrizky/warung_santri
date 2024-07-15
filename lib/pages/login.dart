import 'package:flutter/material.dart';

import '../bloc/blocs.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1ECE8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/logo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "WARUNG SANTRI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: emailC,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: passC,
                  hintText: 'Password',
                  obscureText: true,
                  onSubmitted: (_) {
                    // call the login function when the user presses enter
                    _login(context);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {
                    _login(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) {
    context.read<AuthBloc>().add(AuthEventLogin(emailC.text, passC.text));
  }
}
