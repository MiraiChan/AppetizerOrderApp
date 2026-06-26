# AppetizerOrder

AppetizerOrder is a modern iOS application built with SwiftUI that allows users to seamlessly browse, select, and order their favorite appetizers. 

## Features
- **Appetizer Menu:** Browse a diverse list of appetizers fetched from a remote backend.
- **Nutritional Information:** View detailed information for each appetizer, including calories, protein, and carbs.
- **Order Management:** Easily add items to your order and review them before checkout.
- **Account Profile:** Manage your personal information and preferences, such as extra napkins and frequent refills.

## Tech Stack
- **Swift:** The primary programming language.
- **SwiftUI:** Declarative UI framework for building modern and responsive interfaces.
- **Async/Await:** Utilizes modern Swift concurrency for efficient and readable network requests.
- **Foundation (URLSession):** For handling backend API communication.
- **NSCache:** Used to implement an efficient, built-in image caching system, minimizing redundant network calls.

## Architecture & Advantages
- **Clean Structure:** The project is well-organized into specific directories (`Model`, `Views`, `Screens`, `Utilities`) ensuring easy navigation and maintainability.
- **Modern Concurrency:** Moving away from traditional completion handlers, the app embraces `async/await` for networking, reducing callback hell and making the codebase safer and easier to read.
- **Performance Optimized:** Incorporates image caching via `NSCache` to ensure the UI remains smooth and responsive while scrolling through lists of items with remote images.
- **Type Safety:** Uses `Codable` and `Decodable` protocols to parse JSON responses securely into Swift structs, minimizing runtime errors.
- **Modular Components:** UI elements are broken down into reusable SwiftUI views, making the app easily scalable.

## Getting Started

1. Clone or download the repository.
2. Open `AppetizerOrder.xcodeproj` in Xcode.
3. Build and run the project on a simulator or a physical iOS device.
