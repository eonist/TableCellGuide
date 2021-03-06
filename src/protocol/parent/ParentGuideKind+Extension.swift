import UIKit

extension ParentGuideKind where Self: UIView {
    ///
    /// - Abstract: Creates the text indentation guide for children to align to
    ///
   public func createTextIndentationGuide() -> UILayoutGuide {
        let guide = UILayoutGuide()
        self.addLayoutGuide(guide)
        let margins = self.layoutMarginsGuide
        let maxTextWidth: CGFloat = self.maxTextWidth() // Optional name: widestTitleWidth
        Swift.print("maxTextWidth:  \(maxTextWidth)")
        guide.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: maxTextWidth).isActive = true
        guide.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        return guide
    }
    ///
    /// - Abstract: loop through model.data strings and their fonts
    /// - Note: https://stackoverflow.com/a/17749593/5389500
    ///
   public func maxTextWidth() -> CGFloat {
        return titleItems.map { $0.size(withAttributes: [.font: UIFont.systemFont(ofSize: 16)]).width }.max() ?? 0 // Returns the width of the rendered text (based on font and string) 
    }
}
