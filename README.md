# Iteration X Swift Package

## Overview
Iteration X is a comprehensive bug reporting system for iOS applications, designed to streamline the process of capturing and reporting issues directly through screenshots. Once integrated, the package detects screenshot events and presents a form for the user to fill out, ensuring that feedback can be gathered quickly and efficiently.

## Features
- **Automatic Screenshot Detection**: Captures screenshot events within the app.
- **User Feedback Form**: Presents a form with several screens to the user when a screenshot is taken, allowing them to describe the issue they encountered.
- **ViewController Tracking**: Tracks the ViewController to provide context to the reported issue.
- **Easy Configuration**: Set up with just an API key and event type.


## Getting Your API Key

Before integrating Iteration X into your iOS application, you need to obtain an API key specific to your project. This key enables the Iteration X package to interact seamlessly with our servers. Follow these steps to generate your API key:

### Steps to Generate Your API Key

1. **Access Iteration X Dashboard**: Visit [app.Iteration X.com](https://app.iterationx.com/login?redirect=%2Fdashboard). Log in with your credentials if you're not already signed in.

2. **Choose Your Project**: In the dashboard, select the project for which you want to use Iteration X.

3. **Navigate to Project Settings**: Go to `Project` > `Settings`.

4. **Generate SDK API Key**: Inside the settings, look for the `Generate SDK API Key` option and click on it to create a new API key.

5. **Copy Your API Key**: Once the API key is generated, make sure to copy it. You will need to insert this key into your project's configuration settings as outlined in the installation and configuration instructions.


## Getting Started


## Installation

Iteration X can be installed using the Swift Package Manager. To include it in your project, you need to add it as a dependency in your `Package.swift` file :

```swift
dependencies: [
    .package(url: "https://github.com/Iteration-X/Iteration XSP", .upToNextMajor(from: "1.0.1"))
]
```

Alternatively, you can add Iteration X to your Xcode project by selecting `File > Swift Packages > Add Package Dependency` and entering the package repository URL: `https://github.com/Iteration-X/Iteration XSP`


### Configuration

import UIKit
import IterationXFramework

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Ensure the scene being connected is a UIWindowScene
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Initialize your window with the windowScene
        window = UIWindow(windowScene: windowScene)

        // Configure your root view controller here if not using Storyboards

        // Configure Iteration X with your provided API key and the desired event type.
        IterationX.shared.configure(apiKey: "your-api-key", event: .screenshot)

        // Optional: Enable ViewController tracking for better context in reports.
        IterationX.enableViewControllerTracking()

        // Make the window key and visible
        window?.makeKeyAndVisible()
    }

    // Implement other necessary SceneDelegate methods here
}


In a SwiftUI Application : Configure your @main App as follows : 

```swift

import IterationXFramework

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
Once the Iteration X package is configured, it will automatically detect screenshots taken within your app. Upon capturing a screenshot, a form will be presented, guiding the user through a series of screens where they can provide details about the issue they're reporting. This process ensures that all necessary information for bug resolution is captured efficiently.

### ⚠️ Important

`Iteration X.enableViewControllerTracking()` uses method swizzling, if you think it could break your app, do not use it !





## Support
If you encounter any problems or require assistance with integrating Iteration X into your project, don't hesitate to reach out. Please open an issue on our GitHub repository or contact our support team directly at adrien@Iteration X.io.


