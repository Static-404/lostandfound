import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: const Alignment(0, 0),
        padding: const EdgeInsets.all(56.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.black26),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0,),
            ElevatedButton(
              onPressed: (){},
              child:const Text("Login", style: TextStyle(color: Colors.black45),),
            ),
          ],
        ),
      ),
    );
  }
}
