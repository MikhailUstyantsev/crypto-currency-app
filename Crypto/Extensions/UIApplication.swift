//
//  UIApplication.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 04.06.2023.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
