import SwiftUI

struct ContentView: View {
    @State var width: CGFloat = 300

    var body: some View {
        VStack {
            TextView()
                .frame(width: width, height: 200)
                .border(.red)

            Slider()
        }
        .padding(.horizontal)
    }
}

extension ContentView {
    private enum Constants {
        static let widthValues: ClosedRange<CGFloat> = 100...300
    }

    @ViewBuilder
    private func TextView() -> some View {
        TextContainer {
            Text("Марафон ")
                .font(.body)

            Text("по SwiftUI ")
                .font(.body)
                .foregroundStyle(.secondary)

            Text("«Отцовский пинок»")
                .font(.title)
                .foregroundColor(.blue)
                .fontWeight(.bold)
        }
    }

    @ViewBuilder
    private func Slider() -> some View {
        SwiftUI.Slider(value: $width, in: Constants.widthValues)
    }
}

#Preview {
    ContentView()
}
