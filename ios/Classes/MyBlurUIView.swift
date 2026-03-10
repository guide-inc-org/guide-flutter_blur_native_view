import Flutter
import UIKit

// Custom UIView that ignores all touch events
class PassthroughView: UIView {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        return nil
    }

    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return false
    }
}

// Custom UIVisualEffectView that ignores all touch events
class PassthroughVisualEffectView: UIVisualEffectView {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        return nil
    }

    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return false
    }
}

class MyBlurUIView: NSObject, FlutterPlatformView {
    private var _view: PassthroughView

    init(frame: CGRect) {
        _view = PassthroughView(frame: frame)
        _view.backgroundColor = UIColor.clear
        _view.clipsToBounds = true
        _view.layer.cornerRadius = 14
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = PassthroughVisualEffectView(effect: blurEffect)
        blurEffectView.frame = _view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        _view.addSubview(blurEffectView)
    }

    func view() -> UIView {
        return _view
    }
}