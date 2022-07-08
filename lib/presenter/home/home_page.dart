import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = false;

  void changeIsOn() {
    isOn = !isOn;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                color: isOn ? Colors.orange : Colors.white,
                borderRadius: isOn ? BorderRadius.circular(20) : null,
              ),
            ),
            TextButton(
              onPressed: () {
                changeIsOn();
              },
              child: Text(
                isOn ? 'Desligar' : 'Ligar',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
