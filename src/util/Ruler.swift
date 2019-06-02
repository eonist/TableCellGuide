import UIKit

public class Ruler: UIView {
   override public func layoutSubviews() {
        self.layer.borderColor = UIColor.cyan.cgColor
        self.layer.borderWidth = 1
    }
}
