import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// A [Widget] that prevents clicks from being swallowed by PlatformViews.
class BlurNativeView extends StatelessWidget {
  const BlurNativeView({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      const Positioned.fill(
          child: UiKitView(
        viewType: 'plugins.flutter.dev/blur_native',
        creationParamsCodec: StandardMessageCodec(),
      )),
      child
    ]);
  }
}
