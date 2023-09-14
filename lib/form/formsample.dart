import 'package:flutter/material.dart';

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _loginForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Form Sample"),
      ),
      body: Form(
          key: _loginForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    } else if (!value.contains("@gmail")) {
                      return "please enter a valid email";
                    } else {
                      return null;
                    }
                  },
                  controller: _nameController,
                  decoration: const InputDecoration(
                      label: Text("Email"),
                      hintText: "Please enter your email",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    } else {
                      if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      } else {
                        return null;
                      }
                    }
                  },
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text("Password"),
                      hintText: "Please enter your password",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_loginForm.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Success")));
                        }
                      });
                    },
                    child: const Text("Login")),
              )
            ],
          )),
    );
  }
}
