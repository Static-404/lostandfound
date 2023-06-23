import 'package:flutter/material.dart';

class FoundItemPage extends StatefulWidget {
  const FoundItemPage({super.key});

  @override
  State<FoundItemPage> createState() => _FoundItemPageState();
}

class _FoundItemPageState extends State<FoundItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('Welcome to the Found Page'),
      ),
    );
  }
}
