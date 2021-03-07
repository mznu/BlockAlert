import UIKit
import BlockAlert

fileprivate let alertTitle = "title"
fileprivate let alertMessage = "this is message"
fileprivate let alertDefault = "default"
fileprivate let alertCancel = "cancel"
fileprivate let alertDestructive = "destructive"

final class ViewController: UIViewController {
    
    private func original() {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        
        alert.addTextField()
        
        let defaultAction = UIAlertAction(title: alertDefault, style: .default) {
            print($0.title!)
        }
        let cancelAction = UIAlertAction(title: alertCancel, style: .cancel) {
            print($0.title!)
        }
        let destructiveAction = UIAlertAction(title: alertDestructive, style: .destructive) {
            print($0.title!)
        }
        
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction)
        
        present(alert, animated: true)
    }
    
    private func sampleA() {
        let alert = UIAlertController(alertMessage, title: alertTitle) {
            $0.addTextField()
            $0.addActions([
                UIAlertAction(alertDefault) { print($0.title!) },
                UIAlertAction(cancel: alertCancel) { print($0.title!) },
                UIAlertAction(destructive: alertDestructive) { print($0.title!) }
            ])
        }
        present(alert, animated: true)
    }
    
    private func sampleB() {
        let alert = UIAlertController {
            $0.title = alertTitle
            $0.message = alertMessage
            $0.addTextField()
            
            $0.addAction(title: alertDefault) { print($0.title!) }
            $0.addAction(.cancel, title: alertCancel) { print($0.title!) }
            $0.addAction(.destructive, title: alertDestructive) { print($0.title!) }
        }
        present(alert, animated: true)
    }
    
    @IBAction private func didTouchPresentAlert(_ button: UIButton) {
        // original()
        sampleA()
        // sampleB()
    }

}
