import 'package:flutter/material.dart';
import 'package:flutter_reflectable/reflectable_story_book/story_book_mixin.dart';
import 'package:flutter_reflectable/sample_annotation.dart';

class RedBoxWidget extends StatelessWidget {
  const RedBoxWidget({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: width,
      height: height,
    );
  }
}

@sampleWidget
class SampleRedBoxWidget extends StatelessWidget with StoryBookName {
  const SampleRedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const RedBoxWidget(
      height: 100,
      width: 100,
    );
  }

  @override
  String get name => 'box/red-box';
}
