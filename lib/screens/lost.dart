import 'package:flutter/material.dart';

class LostItemPage extends StatefulWidget {
  const LostItemPage({super.key});

  @override
  State<LostItemPage> createState() => _LostItemPageState();
}

class _LostItemPageState extends State<LostItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('Welcome to the Lost Page'),
      ),
    );
  }
}
