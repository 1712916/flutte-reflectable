import 'package:flutter/material.dart';
import 'package:flutter_reflectable/reflectable_story_book/story_book_mixin.dart';
import 'package:flutter_reflectable/sample_annotation.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ReflectableStoryBookWidget extends StatelessWidget {
  const ReflectableStoryBookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Storybook(
      plugins: initializePlugins(
        initialDeviceFrameData: (
          isFrameVisible: true,
          device: Devices.ios.iPad,
          orientation: Orientation.portrait,
        ),
      ),
      stories: sampleWidget.annotatedClasses
          .where((classMirror) => !classMirror.isAbstract)
          .map((e) => e.newInstance('', []))
          .whereType<StoryBookName>()
          .map((e) => Story(name: e.name, builder: (_) => e))
          .toList(),
    );
  }
}
