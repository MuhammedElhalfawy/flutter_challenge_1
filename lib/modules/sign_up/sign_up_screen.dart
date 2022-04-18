import 'package:flutter/material.dart';

import '../../shared/components/default_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Let\'s Get Started!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Create an account to Q Allure to get all features',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 30.0),
              DefaultTextField(
                type: TextInputType.text,
                hint: 'Your Name',
                prefix: Icons.person_outline_outlined,
                onSubmit: (value) {
                  // ignore: avoid_print
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
              DefaultTextField(
                type: TextInputType.emailAddress,
                hint: 'Email',
                prefix: Icons.email_outlined,
                onSubmit: (value) {
                  // ignore: avoid_print
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
              DefaultTextField(
                type: TextInputType.phone,
                hint: 'Phone',
                prefix: Icons.phone_iphone_outlined,
                onSubmit: (value) {
                  // ignore: avoid_print
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
              DefaultTextField(
                hint: 'Password',
                type: TextInputType.visiblePassword,
                prefix: Icons.lock_open_outlined,
                onSubmit: (value) {
                  // ignore: avoid_print
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
              DefaultTextField(
                hint: 'Confirm Password',
                type: TextInputType.visiblePassword,
                prefix: Icons.lock_open_outlined,
                onSubmit: (value) {
                  // ignore: avoid_print
                  print(value);
                },
              ),
              const SizedBox(height: 30.0),
              Container(
                height: 53.0,
                width: 178.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.indigoAccent,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'CREATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login here',
                      style: TextStyle(fontSize: 16.0),
                    ),
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
