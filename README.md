# BlockAlert

[![Version](https://img.shields.io/cocoapods/v/BlockAlert.svg?style=flat)](https://cocoapods.org/pods/BlockAlert)
[![License](https://img.shields.io/cocoapods/l/BlockAlert.svg?style=flat)](https://cocoapods.org/pods/BlockAlert)
[![Platform](https://img.shields.io/cocoapods/p/BlockAlert.svg?style=flat)](https://cocoapods.org/pods/BlockAlert)

BlockAlert helps you initializing and presenting alert controller with shorter codes.

## Example

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

    }.show()
}
```

```swift
typealias Alert = UIAlertController
typealias Action = UIAlertAction

func presentActionSheet() {
    Alert(nil, title: "Select one", preferredStyple: .actionSheet) {
        $0.addActions([
            Action("Default"),
            Action(destructive: "Destructive")
        ])
        $0.addAction(Action(cancel: "Cancel"))
    }.show()
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
