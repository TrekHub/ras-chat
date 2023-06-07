import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Login Screen'),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                final data = {
                  'email': emailController.text,
                  'password': passwordController.text,
                };

                print(data);
              },
              child: const Text('Login')),
        ],
      ),
    ));
  }
}
