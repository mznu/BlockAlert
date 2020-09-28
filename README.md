# BlockAlert

[![Version](https://img.shields.io/cocoapods/v/BlockAlert.svg?style=flat)](https://cocoapods.org/pods/BlockAlert)
[![License](https://img.shields.io/cocoapods/l/BlockAlert.svg?style=flat)](https://cocoapods.org/pods/BlockAlert)
[![Platform](https://img.shields.io/cocoapods/p/BlockAlert.svg?style=flat)](https://cocoapods.org/pods/BlockAlert)

BlockAlert helps you initializing and presenting alert controller with shorter codes.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
func presentAlert() {
    UIAlertController("Type anything", title: "Prompt") { alert in

        // alert is UIAlertController

        alert.addTextField()
        alert.addActions([
            UIAlertAction("Ok") { _ in
                print(alert.textFields!.first!.text ?? "")
            },
            UIAlertAction(cancel: "Cancel")
        ])

    }.present()
}
```

```swift
typealias ActionSheet = UIAlertController

func presentActionSheet() {
    ActionSheet(preferredStyle: .actionSheet) {
        $0.title = "Action Sheet"
        $0.addAction(title: "Default")
        $0.addAction(.cancel, title: "Cancel")
    }.present()
}
```

## Installation

BlockAlert is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BlockAlert'
```

## Author

Mujun Kim, me@mujun.kim

## License

BlockAlert is available under the MIT license. See the LICENSE file for more info.
