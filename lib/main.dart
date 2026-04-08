import 'package:flutter/material.dart';
import 'package:practice_flutter_basic/exercice_1.dart';

import 'exercice_2.dart';
import 'exercice_3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("serie d'exercice sur flutter"),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => EchangPage(),
                  ),
                );
              },
                  child:  Text("Exercice_1",style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 16,color: Colors.indigoAccent, ),),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AirePage(),
                    ),
                  );
                },
                child:  Text("Exercice_2",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16,color: Colors.indigoAccent, ),),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => TimePage(),
                    ),
                  );
                },
                child: Text("Exercice_3",style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16,color: Colors.indigoAccent, ),),
              ),
            ],
          ),

        ),

      ),
    );
  }
}





