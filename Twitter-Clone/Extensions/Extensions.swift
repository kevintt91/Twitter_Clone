//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/8/23.
//

import UIKit

extension UIApplication {
    
//    var keyWindow: UIWindow? {
//        // Get Connected Scenes
//        return UIApplication.shared.connectedScenes
//            // Keep only active scenes, onscreen and visible to the user
//            .filter { $0.activationState == .foregroundActive }
//
//            // Keep only the first 'UIWindowScene'
//            .first(where: {$0 is UIWindowScene})
//
//            // Get its associated windows
//            .flatMap({$0 as? UIWindowScene})?.windows
//
//            // Keep only the key window
//            .first(where: \.isKeyWindow)
//    }
    
    var keyWindow: UIWindow? {
            return connectedScenes
                .filter { $0.activationState == .foregroundActive }
                .map { $0 as? UIWindowScene }
                .compactMap { $0 }
                .first?.windows
                .filter { $0.isKeyWindow }.first
        }
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
