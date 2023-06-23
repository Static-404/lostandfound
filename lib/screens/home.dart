import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text('Home'),
),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){

            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
              color: Colors.lightBlueAccent,
              width: double.infinity,
              height: 120,
              child: Stack(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40.0,),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Add found item', style: TextStyle(color: Colors.white,fontSize: 25.0),),
                  )
                ],
              )
            ),
          ),
          const SizedBox(height: 5.0,),
          GestureDetector(
            onTap: (){

            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),
              color: Colors.lightBlue,
              width: double.infinity,
              height: 120,
              child:Stack(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 40.0,),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Add missing item', style: TextStyle(color: Colors.white,fontSize: 25.0),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
