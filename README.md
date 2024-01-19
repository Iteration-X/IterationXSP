# IterationX Swift Package

## Overview
IterationX is a comprehensive bug reporting system for iOS applications, designed to streamline the process of capturing and reporting issues directly through screenshots. Once integrated, the package detects screenshot events and presents a form for the user to fill out, ensuring that feedback can be gathered quickly and efficiently.

## Features
- **Automatic Screenshot Detection**: Captures screenshot events within the app.
- **User Feedback Form**: Presents a form with several screens to the user when a screenshot is taken, allowing them to describe the issue they encountered.
- **ViewController Tracking**: Tracks the ViewController to provide context to the reported issue.
- **Easy Configuration**: Set up with just an API key and event type.

## Getting Started


## Getting your `API KEY`

Navigate to [app.iterationx.com](https://app.iterationx.com/login?redirect=%2Fdashboard), select a Project 

`Project` > `Settings` > `Generate SDK API Key`




## Installation

IterationX can be installed using the Swift Package Manager. To include it in your project, you need to add it as a dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/Iteration-X/IterationXSP", .upToNextMajor(from: "1.0.1"))
]
```

Alternatively, you can add IterationX to your Xcode project by selecting `File > Swift Packages > Add Package Dependency` and entering the package repository URL: `https://github.com/Iteration-X/IterationXSP`


### Configuration

In a UIKit Swift Application : Configure the IterationX package in your `AppDelegate.swift` as follows:


```swift
import IterationX

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Configure IterationX with your provided API key and the screenshot event type.
    IterationX.shared.configure(apiKey: "your-api-key", event: .screenshot)

    // Optional: Enable ViewController tracking for better context in reports.
    IterationX.enableViewControllerTracking()
    
    return true
}
```

In a SwiftUI Application : Configure your @main App as follows: 

```swift
@main
struct SwiftUITestApp: App {
    
    init() {
        IterationX.shared.configure(apiKey: "your-api-key", event: .screenshot)

     // Optional: Enable ViewController tracking for better context in reports.
        IterationX.enableViewControllerTracking()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```


## Usage
Once the IterationX package is configured, it will automatically detect screenshots taken within your app. Upon capturing a screenshot, a form will be presented, guiding the user through a series of screens where they can provide details about the issue they're reporting. This process ensures that all necessary information for bug resolution is captured efficiently.

### ⚠️ Important

`IterationX.enableViewControllerTracking()` uses method swizzling, if you think it could break your app, do not use it !





## Support
If you encounter any problems or require assistance with integrating IterationX into your project, don't hesitate to reach out. Please open an issue on our GitHub repository or contact our support team directly at adrien@iterationx.io.


