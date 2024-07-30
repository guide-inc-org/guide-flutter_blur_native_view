import Flutter
import UIKit


class MyBlurUIView: NSObject, FlutterPlatformView {
    private var _view: UIView

    init(
        frame: CGRect
    ) {
          _view = UIView(frame: frame)
          _view.backgroundColor = UIColor.clear
          _view.clipsToBounds = true
          _view.layer.cornerRadius = 14
          let blurEffect = UIBlurEffect(style: .light)
          let blurEffectView = UIVisualEffectView(effect: blurEffect)
          blurEffectView.frame = _view.bounds
          blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
          _view.addSubview(blurEffectView)
    }

    func view() -> UIView {
        return _view
    }
}