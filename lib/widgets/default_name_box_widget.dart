import 'package:flutter/material.dart';
import 'package:flutter_reflectable/reflectable_story_book/story_book_mixin.dart';
import 'package:flutter_reflectable/sample_annotation.dart';

class DefaultNameBox extends StatelessWidget {
  const DefaultNameBox({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: width,
      height: height,
      child: const Text(defaultName),
    );
  }
}

@sampleWidget
class SampleDefaultNameBoxWidget extends StatelessWidget {
  const SampleDefaultNameBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultNameBox(
      height: 100,
      width: 100,
    );
  }
}
