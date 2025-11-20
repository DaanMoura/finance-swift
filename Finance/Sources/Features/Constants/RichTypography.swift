
import UIKit

public struct RichTypography {

    // MARK: - Private Helpers

    private static func attributes(font: UIFont, lineHeight: CGFloat? = nil) -> [NSAttributedString.Key: Any] {
        var attributes: [NSAttributedString.Key: Any] = [.font: font]
        if let lineHeight = lineHeight {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.minimumLineHeight = lineHeight
            paragraphStyle.maximumLineHeight = lineHeight
            attributes[.paragraphStyle] = paragraphStyle
        }
        return attributes
    }

    // MARK: - Public Styling Functions

    /// Returns an attributed string for "Title Lg" style using `Typography.titleLg`.
    public static func titleLg(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.titleLg)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Title Md" style using `Typography.titleMd`.
    public static func titleMd(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.titleMd)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Title Sm" style using `Typography.titleSm` (UPPERCASE).
    public static func titleSm(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.titleSm)
        return NSAttributedString(string: text.uppercased(), attributes: attrs)
    }

    /// Returns an attributed string for "Title Xs" style using `Typography.titleXs` (UPPERCASE).
    public static func titleXs(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.titleXs)
        return NSAttributedString(string: text.uppercased(), attributes: attrs)
    }

    /// Returns an attributed string for "Title 2Xs" style using `Typography.title2Xs` (UPPERCASE).
    public static func title2Xs(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.title2Xs)
        return NSAttributedString(string: text.uppercased(), attributes: attrs)
    }

    /// Returns an attributed string for "Text Sm Regular" style using `Typography.textSmRegular`.
    public static func textSmRegular(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.textSmRegular)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Text Sm Bold" style using `Typography.textSmBold`.
    public static func textSmBold(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.textSmBold)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Text Xs" style using `Typography.textXs`.
    public static func textXs(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.textXs)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Input" style using `Typography.input` with a 24px line height.
    public static func input(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.input, lineHeight: 24)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Button Md" style using `Typography.buttonMd` with a 24px line height.
    public static func buttonMd(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.buttonMd, lineHeight: 24)
        return NSAttributedString(string: text, attributes: attrs)
    }

    /// Returns an attributed string for "Button Sm" style using `Typography.buttonSm` with a 20px line height.
    public static func buttonSm(_ text: String) -> NSAttributedString {
        let attrs = attributes(font: Typography.buttonSm, lineHeight: 20)
        return NSAttributedString(string: text, attributes: attrs)
    }
}
