import UIKit

public extension UIAlertController {
    
    /// Creates and returns a view controller for displaying an alert to the user. Default style is `.alert`.
    convenience init(_ message: String?, title: String? = nil, preferredStyle: Style = .alert, block: ((UIAlertController) -> Void)? = nil) {
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        block?(self)
    }
    
    /// Creates and returns a view controller for displaying an alert to the user. Default style is `.alert`.
    convenience init(preferredStyle: Style = .alert, block: (UIAlertController) -> Void) {
        self.init(title: nil, message: nil, preferredStyle: preferredStyle)
        block(self)
    }
    
    /// Presents alert modally, at topmost view controller.
    @available(*, deprecated, renamed: "present(completion:)")
    func show(completion: (() -> Void)? = nil) {
        present(completion: completion)
    }
    
    /// Presents alert modally, at topmost view controller.
    func present(completion: (() -> Void)? = nil) {
        var keyWindow: UIWindow? {
            guard #available(iOS 13, *) else { return UIApplication.shared.keyWindow }
            return UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        }
        
        if var topController = keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            
            topController.present(self, animated: true, completion: completion)
        }
    }
    
    /// Attaches an action object to the alert or action sheet.
    func addAction(_ style: UIAlertAction.Style = .default, title: String?, handler: ((UIAlertAction) -> Void)? = nil) {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        addAction(action)
    }
    
    /// Attaches action objects to the alert or action sheet.
    func addActions(_ actions: [UIAlertAction]) {
        for action in actions {
            addAction(action)
        }
    }
    
}

public extension UIAlertAction {
    
    /// Create and return a `.default` style action with the specified title.
    convenience init(_ title: String, handler: ((UIAlertAction) -> Void)? = nil) {
        self.init(title: title, style: .default, handler: handler)
    }
    
    /// Create and return a `.cancel` style action with the specified title.
    convenience init(cancel title: String, handler: ((UIAlertAction) -> Void)? = nil) {
        self.init(title: title, style: .cancel, handler: handler)
    }
    
    /// Create and return a `.destructive` style action with the specified title.
    convenience init(destructive title: String, handler: ((UIAlertAction) -> Void)? = nil) {
        self.init(title: title, style: .destructive, handler: handler)
    }
    
}
