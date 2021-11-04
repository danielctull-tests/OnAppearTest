
import SwiftUI

struct ContentView: View {

    @State private var value = 0

    var body: some View {
        Text("Hello #\(value)")
            .onAppear { value += 1 }
    }
}
