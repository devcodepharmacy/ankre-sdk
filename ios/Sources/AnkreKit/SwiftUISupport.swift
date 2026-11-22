#if canImport(SwiftUI)
import SwiftUI

extension View {
    /// Records `Ankre.screen(name)` each time this view appears.
    public func ankreScreen(_ name: String) -> some View {
        modifier(AnkreScreenModifier(name: name))
    }
}

private struct AnkreScreenModifier: ViewModifier {
    let name: String

    func body(content: Content) -> some View {
        content.onAppear { Ankre.screen(name) }
    }
}
#endif
