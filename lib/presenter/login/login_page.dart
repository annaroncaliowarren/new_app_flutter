import 'package:flutter/material.dart';
import '../../shared/widgets/input_field_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                radius: 70,
                child: const Icon(
                  Icons.person,
                  size: 80,
                ),
              ),
              InputFieldLogin(
                label: 'Email',
                prefixIcon: Icons.email_rounded,
                controller: emailController,
                obscureText: false,
              ),
              InputFieldLogin(
                label: 'Senha',
                prefixIcon: Icons.password_rounded,
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    color: Colors.lightGreen,
                    onPressed: () {
                      emailController.clear();
                      passwordController.clear();
                    },
                    child: const Text('Sign in'),
                  ),
                  const SizedBox(width: 20),
                  MaterialButton(
                    color: Colors.lightBlue,
                    onPressed: () {
                      emailController.clear();
                      passwordController.clear();
                    },
                    child: const Text('Sign up'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                        //fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(
                            () {
                              isChecked = value!;
                            },
                          );
                        },
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      
                      const Text(
                        'Forgot your password?',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
