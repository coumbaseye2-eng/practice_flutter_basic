import 'package:flutter/material.dart';

class EchangPage extends StatefulWidget {
  @override
  _EchangPageState createState() => _EchangPageState();
}

class _EchangPageState extends State<EchangPage> {
  var controller_1 = TextEditingController();
  var controller_2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Échangeur"),
        ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            TextField(controller: controller_1),
            TextField(controller: controller_2),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var memoire = controller_1.text;
                  controller_1.text = controller_2.text;
                  controller_2.text = memoire;
                });
              },
              child: Text("Echanger"),
            ),
          ],
        ),
      ),
    );
  }
}