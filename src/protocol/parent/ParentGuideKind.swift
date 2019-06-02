import UIKit
///
/// - Abstract: Subviews of UIViews that adapt this protocol are able to align to textGuide
///
public protocol ParentGuideKind {
    ///
    /// - Abstract: The textGuide works as a common indentation for all Items that adapt ChildGuideKind
    ///
    var textGuide: UILayoutGuide { get }
    ///
    /// - Remark: The guide is calculated based on the title items
    ///
    var titleItems: [String] { get }
}
