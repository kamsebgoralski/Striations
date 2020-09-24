<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.0-orange.svg" />
        <img src="https://img.shields.io/badge/Platforms-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS-blue.svg?style=flat" />
    <a href="https://opensource.org/licenses/MIT">
      <img src="https://img.shields.io/cocoapods/l/ViewAnimator.svg?style=flat" alt="License" />
    </a>
</p>


# Striations

## Description
**Striations** is a library for building beautiful background by stripes. Allows you to set the space between the stripes, color and degree of inclination.


## Installation

### Swift Package Manager

1. In Xcode press `File -> Swift Packages -> Add Package Dependency...`
2. Enter the package URL https://github.com/kamsebgoralski/Striations

## Usage

```Swift

import SwiftUI
import Striations

struct ContentView: View {
    var body: some View {

        ZStack {
            Striations(color: Color.pink.opacity(0.2), width: 16, spacing: 16, rotationDegrees: 45)
            Striations(color: Color.pink.opacity(0.2), width: 16, spacing: 16, rotationDegrees: -45)
            Text("Hello, world!")
                .font(.system(size: 32, weight: .bold))
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
```

## Feedback

If you notice any issue, got stuck or just want to chat feel free to create an issue. I will be happy to help you.

## License

**Striations** is released under the [MIT License](LICENSE).
