import SwiftUI

struct TextContainer<Content: View>: View {
    private let content: () -> Content

    init(@TextPlusBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        content()
    }
}

@resultBuilder
struct TextPlusBuilder {
    static func buildBlock(_ texts: Text...) -> Text {
        texts.reduce(Text("")) { result, element in
            result + element
        }
    }
}
