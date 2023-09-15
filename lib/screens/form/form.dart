import 'package:flutter/material.dart';

class FormSamplePage extends StatefulWidget {
  const FormSamplePage({super.key});

  @override
  State<FormSamplePage> createState() => _FormSamplePageState();
}

class _FormSamplePageState extends State<FormSamplePage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void checkLogin() {
    final email = emailController.text;
    final password = passwordController.text;
    if (email == password) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green, content: Text("Login success")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
        centerTitle: true,
      ),
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text("User Login"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email should not be empty";
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(),
                        label: Text("Email"),
                        hintText: "Enter your email"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password should not be empty";
                        }
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                          border: OutlineInputBorder(),
                          label: Text("Passwoord"),
                          hintText: "Enter your password")),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        checkLogin();
                      }
                    },
                    child: const Text("Login"))
              ],
            ),
          )),
    );
  }
}
