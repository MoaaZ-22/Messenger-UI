import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  bool isPassword = true;
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "LOGIN Screen",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ReusableTextField(
                    isEnabled: true,
                      isPassword: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email Empty';
                        }
                        return null;
                      },
                      controller: emailController,
                      labelText: 'Email Address',
                      prefixIcon: Icons.email,
                      keyboardInputType: TextInputType.emailAddress),
                  const SizedBox(
                    height: 15,
                  ),
                  ReusableTextField(
                    isEnabled: true,
                      isPassword: isPassword,
                      suffixIcon: (isPassword) ? Icons.visibility : Icons.visibility_off,
                      suffixFunc: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Password is Empty';
                        }
                        return null;
                      },
                      controller: passwordController,
                      labelText: 'Password',
                      prefixIcon: Icons.lock,
                      keyboardInputType: TextInputType.visiblePassword),
                  const SizedBox(
                    height: 20,
                  ),
                  //******************** LOGIN Button **************************
                  defaultButton(
                      width: double.infinity,
                      height: 50,
                      background: Colors.blue,
                      function: () {
                        formKey.currentState!.validate();
                      },
                      text: 'LOGIN'),
                  const SizedBox(
                    height: 10,
                  ),
                  //******************** Register Button **************************
                  defaultButton(
                      width: double.infinity,
                      height: 50,
                      background: Colors.blue,
                      function: () {},
                      text: 'Register'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have account ?'),
                      const SizedBox(
                        width: 3,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Create Account',
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
