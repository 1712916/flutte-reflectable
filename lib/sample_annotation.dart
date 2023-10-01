import 'package:reflectable/reflectable.dart';

//dart run build_runner build

class SampleWidget extends Reflectable {
  const SampleWidget() : super(invokingCapability, typingCapability, reflectedTypeCapability);
}

const sampleWidget = SampleWidget();
