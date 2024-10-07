import 'package:flutter/material.dart';

void main() {
  runApp(const TaschenrechnerApp());
}

class TaschenrechnerApp extends StatelessWidget {
  const TaschenrechnerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taschenrechner App',
      home: TaschenrechnerWidget(),
    );
  }
}

class TaschenrechnerWidget extends StatefulWidget {
  const TaschenrechnerWidget({super.key});

  @override
  State<TaschenrechnerWidget> createState() => TaschenrechnerWidgetState();
}

class TaschenrechnerWidgetState extends State<TaschenrechnerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Taschenrechner',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            color: Colors.blueGrey,
          ),
          Container(
            height: 100.0,
            color: Colors.amber,
          ),
          Container(
            height: 100.0,
            color: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}
