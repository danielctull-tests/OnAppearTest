
import SwiftUI

struct ContentView: View {
    var body: some View {
        OnAppearView()
        GroupOnAppearView()
        FlipFlopView()
    }
}

struct OnAppearView: View {

    @State private var value = 0

    var body: some View {
        Text("Hello #\(value)")
            .onAppear { value += 1 }
    }
}

struct GroupOnAppearView: View {

    @State private var value = 0

    var body: some View {
        Group {
            if value.isMultiple(of: 2) {
                Text("Even: \(value)")
            } else {
                Text("Odd: \(value)")
            }
        }
        .onAppear { value += 1 }
    }
}

struct FlipFlopView: View {

    @State private var value = 0

    var body: some View {
        if value.isMultiple(of: 2) {
            Text("Even: \(value)")
                .onAppear { value += 1 }
        } else {
            Text("Odd: \(value)")
                .onAppear { value += 1 }
        }
    }
}
