import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
/// A [Widget] that prevents clicks from being swallowed by PlatformViews.
class BlurNativeView extends StatelessWidget {
  const BlurNativeView({
    required this.child,
    this.intercepting = true,
    this.debug = false,
    super.key,
  });

  final Widget child;

  final bool intercepting;
  final bool debug;

  @override
  Widget build(BuildContext context) {
    if (!intercepting) {
      return child;
    }
    return  Stack(alignment: Alignment.center, children: <Widget>[
      const Positioned.fill(
          child: UiKitView(
            viewType: 'plugins.flutter.dev/blur_native',
            creationParamsCodec: StandardMessageCodec(),
          )),
      child
    ]);
  }
}
