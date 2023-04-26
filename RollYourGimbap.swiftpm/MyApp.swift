import SwiftUI

@main
struct MyApp: App {
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenWidth = UIScreen.main.bounds.size.width
    var body: some Scene {
        WindowGroup {
            StartView()
                .colorScheme(.light)
        }
    }
}
