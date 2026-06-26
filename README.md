# AppetizerOrder

AppetizerOrder is a modern iOS application built with SwiftUI that allows users to seamlessly browse, select, and order their favorite appetizers. 
<p align="center">
<img width="160" alt="Simulator Screenshot - iPhone 11 - 2026-06-26 at 01 46 17" src="https://github.com/user-attachments/assets/af0fd9b7-d39c-461a-b38e-a282927a848c" />
<img width="160"alt="Simulator Screenshot - iPhone 11 - 2026-06-26 at 01 42 34" src="https://github.com/user-attachments/assets/052b23b6-c418-4937-862a-cf2775b67f87" />
<img width="160" alt="Simulator Screenshot - iPhone 11 - 2026-06-26 at 01 46 53" src="https://github.com/user-attachments/assets/1dac6fc2-e6de-495a-bca5-e9b1d3c173d3" />
<img width="160" alt="Simulator Screenshot - iPhone 11 - 2026-06-26 at 01 47 11" src="https://github.com/user-attachments/assets/6efe2110-5cb3-41d2-80cc-e2a6ed94419e" />
</p>

<p align="center">
  <img width="160" alt="Simulator Screenshot - iPhone 11 - 2026-06-26 at 01 41 53" src="https://github.com/user-attachments/assets/9ebbb574-22ac-4f01-9cdc-6b39e44fae26" />
  <img width="160"alt="Simulator Screenshot - iPhone 11 - 2026-06-26 at 01 45 08" src="https://github.com/user-attachments/assets/bd032920-7858-4a1b-b9b3-5a0f16a82673" />
</p>

## Features
- **Appetizer Menu:** Browse a diverse list of appetizers fetched from a remote backend.
- **Nutritional Information:** View detailed information for each appetizer, including calories, protein, and carbs.
- **Order Management:** Easily add items to your order and review them before checkout.
- **Account Profile:** Manage your personal information and preferences, such as extra napkins and frequent refills.
- **Dark Mode Support:** Fully optimized and visually distinct native dark mode experience.

## Tech Stack
- **Swift:** The primary programming language.
- **SwiftUI:** Declarative UI framework for building modern and responsive interfaces.
- **Async/Await & @MainActor:** Utilizes modern Swift concurrency for efficient network requests, ensuring UI updates are safely dispatched to the main thread.
- **RegexBuilder:** Employs the modern Swift RegexBuilder approach for complex string parsing and form validation.
- **Foundation (URLSession):** For handling backend API communication.
- **NSCache:** Used to implement an efficient, built-in image caching system, minimizing redundant network calls.

## Architecture & Advantages
- **Clean Structure:** The project is well-organized into specific directories (`Model`, `Views`, `Screens`, `Utilities`) ensuring easy navigation and maintainability.
- **State Management:** Effectively leverages `@EnvironmentObject` property wrappers to seamlessly pass state and dependencies throughout the view hierarchy.
- **Advanced Form Control:** Utilizes `@FocusState` for programmatic keyboard management and fluid user input experiences in the Account view.
- **Modern Concurrency:** Moving away from traditional completion handlers, the app embraces `async/await` for networking, reducing callback hell and making the codebase safer and easier to read.
- **Performance Optimized:** Incorporates image caching via `NSCache` to ensure the UI remains smooth and responsive while scrolling through lists of items with remote images.
- **Type Safety:** Uses `Codable` and `Decodable` protocols to parse JSON responses securely into Swift structs, minimizing runtime errors.
- **Modular Components:** UI elements are broken down into reusable SwiftUI views, making the app easily scalable.

## Getting Started

1. Clone or download the repository.
2. Open `AppetizerOrder.xcodeproj` in Xcode.
3. Build and run the project on a simulator or a physical iOS device.

### Troubleshooting
- **Mock Data Fallback:** If the remote server is down or unreachable, the application includes a `MockData` struct containing sample appetizers (located in `Appetizer.swift`). You can temporarily swap the network response in `NetworkManager` or the respective view model to use `MockData.appetizers`. This allows you to preview and test the UI without an active internet connection.
<p align="center">
<img width="160"alt="Simulator Screenshot - iPhone 16e - 2026-06-26 at 13 54 00" src="https://github.com/user-attachments/assets/f3e431ec-2aef-414c-a3d4-6623b9558411" />
</p>

### Screencast
Please note that the demo video has been sped up to reduce its length.


https://github.com/user-attachments/assets/96428064-f903-4167-b736-00681e63f20b

