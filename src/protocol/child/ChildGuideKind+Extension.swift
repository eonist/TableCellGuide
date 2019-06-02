import UIKit

extension ChildGuideKind where Self: UIView{
    ///
    /// Returns the parent's guide
    ///
    var textGuide: UILayoutGuide? {
        return (self.superview as? ParentGuideKind)?.textGuide
    }
}
