import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;

  // The key parameter is automatically handled by the super constructor
  const CustomScaffold({
    Key? key,
    required this.appBar,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A simple layout with an appBar on top and the body below.
    return Material(
      child: Column(
        children: [
          // AppBar is typically a PreferredSizeWidget.
          appBar,
          // Expanded makes the body fill the rest of the screen.
          Expanded(child: body),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Scaffold Demo',
      home: CustomScaffold(
        appBar: AppBar(
          title: const Text('Custom Scaffold'),
        ),
        body: const Center(
          child: Text('This is the body of the custom scaffold.'),
        ),
      ),
    );
  }
}
