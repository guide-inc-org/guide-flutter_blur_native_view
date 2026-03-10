import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class BlurNativeView extends StatelessWidget {
  const BlurNativeView({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.passthrough,
      children: <Widget>[
        Positioned.fill(
          child: UiKitView(
            viewType: 'plugins.flutter.dev/blur_native',
            creationParamsCodec: const StandardMessageCodec(),
            hitTestBehavior: PlatformViewHitTestBehavior.transparent,
          ),
        ),
        child ?? const SizedBox.shrink(),
      ],
    );
  }
}
