import SwiftUI

/// SwiftUI polish that was added after macOS 13. Keep the richer transition on
/// newer systems, while retaining the ordinary value animation on 13.7.
extension View {
    @ViewBuilder
    func codenotchNumericTextTransition() -> some View {
        if #available(macOS 14.0, *) {
            contentTransition(.numericText())
        } else {
            self
        }
    }
}
