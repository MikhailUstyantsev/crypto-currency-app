//
//  XMarkButton.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 11.06.2023.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button(action: {
            print("Close sheet!!!")
            dismiss()
        }, label: {
            Image(systemName: "xmark")
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
