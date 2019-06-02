import UIKit

class Ruler: UIView {
    override func layoutSubviews() {
        self.layer.borderColor = UIColor.cyan.cgColor
        self.layer.borderWidth = 1
    }
}
