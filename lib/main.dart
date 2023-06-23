import 'package:flutter/material.dart';
import 'package:lostandfound/screens/found.dart';
import 'package:lostandfound/screens/home.dart';
import 'package:lostandfound/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lostandfound/screens/lost.dart';
import 'package:lostandfound/screens/register.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "home",
      routes: {
        "login": (context) => const LoginPage(),
        "register": (context) => const RegistrationPage(),
        "home": (context) => const HomePage(),
        "lost": (context) => const LostItemPage(),
        "found": (context) => const FoundItemPage(),
      },
    );
  }
}