import 'package:flutter/material.dart';

void main() {
  runApp(const TaschenrechnerApp());
}

class TaschenrechnerApp extends StatelessWidget {
  const TaschenrechnerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title: 'Taschenrechner App',
home: TaschenrechnerApp (),

    );
  }
}

class _TaschenrechnerWidgetState extends StatefulWidget {
  const _TaschenrechnerWidgetState({super.key});

  @override
  State<_TaschenrechnerWidgetState> createState() => __TaschenrechnerWidgetStateState();
}

class __TaschenrechnerWidgetStateState extends State<_TaschenrechnerWidgetState> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
