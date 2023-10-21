import 'package:flutter/material.dart';
import 'package:flutter_reflectable/sample_annotation.dart';

///*important
///need import 'package:flutter_reflectable/widgets/widget.dart';
import 'package:flutter_reflectable/widgets/widget.dart';

import 'main.reflectable.dart';
import 'reflectable_story_book/reflectable_story_book_widget.dart';

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
      home: const ReflectableStoryBookWidget(),
    );
  }
}

class SampleListWidget extends StatelessWidget {
  const SampleListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget by sample annotation')),
      body: Column(
        children: sampleWidget.annotatedClasses
            .where((mirror) => !mirror.isAbstract)
            .map((e) => e.newInstance('', []))
            .whereType<Widget>()
            .toList(),
      ),
    );
  }
}
