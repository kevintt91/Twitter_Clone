//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/8/23.
//

import UIKit

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
