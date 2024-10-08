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
  String _input = '15.0';
  final String _output = '15.0';

  void btnPressedCallback(String zeichen) {
    setState(() {
      _input = zeichen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border.all(),
        backgroundColor: Colors.lightBlue[400],
        title: const Text(
          'Taschenrechner',
          selectionColor: Colors.white,
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 252, 251, 251),
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _input,
                style: const TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 189, 189, 188),
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Text(
                _output,
                style: const TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                NumPadZeile(const ['7', '8', '9', '/'], btnPressedCallback),
                NumPadZeile(const ['4', '5', '6', '*'], btnPressedCallback),
                NumPadZeile(const ['1', '2', '3', '-'], btnPressedCallback),
                NumPadZeile(const ['0', 'C', '=', '+'], btnPressedCallback),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NumPadZeile extends StatelessWidget {
  final List<String> zeichen;
  final Function(String) btnPressed;
  const NumPadZeile(this.zeichen, this.btnPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: zeichen
              .map(
                (symbol) => Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: zeichen.indexOf(symbol) == zeichen.length - 1
                            ? Colors.amber.shade900
                            : null,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: TextButton(
                        onPressed: () {
                          btnPressed(symbol);
                        },
                        child: Text(
                          symbol,
                          style: TextStyle(
                            fontSize: 24.0,
                            color: const Color.fromARGB(255, 71, 71, 71),
                            fontWeight:
                                zeichen.indexOf(symbol) == zeichen.length - 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        )),
                  ),
                ),
              )
              .toList()),
    );
  }
}
