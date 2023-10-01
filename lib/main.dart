import 'package:flutter/material.dart';
import 'package:flutter_reflectable/sample_annotation.dart';

///*important
///need import 'package:flutter_reflectable/widgets/widget.dart';
import 'package:flutter_reflectable/widgets/widget.dart';

import 'main.reflectable.dart';

void main() {
  initializeReflectable();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: SampleListWidget(),
    );
  }
}

class SampleListWidget extends StatelessWidget {
  const SampleListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget by sample annotation')),
      body: Column(
        children: sampleWidget.annotatedClasses.map((e) => e.newInstance('', []) as Widget).toList(),
      ),
    );
  }
}
