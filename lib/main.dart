import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetDemo(),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Widget"),
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Penggunaan Container",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  // textAlign: TextAlign.left,
                ),
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text("Tombol Elevated"),
              )),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text("Rating : 9.0")
            ],
          )
        ],
      ),
    );
  }
}
