import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/components/default_form_field.dart';
import '../sign_up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/login.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Log in your existent account of Q Allure',
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                DefaultTextField(
                  type: TextInputType.emailAddress,
                  hint: 'Email Address',
                  prefix: Icons.person_outline_outlined,
                  onSubmit: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DefaultTextField(
                  hint: 'Password',
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  prefix: Icons.lock_open_outlined,
                  onSubmit: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.indigo,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 53.0,
                  width: 178.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.indigo,
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Or connect using',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        minimumSize: const Size(125.0, 40.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.facebookF,
                        size: 16.0,
                      ),
                      label: const Text('Facebook'),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: const Size(125.0, 40.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.g,
                        size: 16.0,
                      ),
                      label: const Text('Google'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
