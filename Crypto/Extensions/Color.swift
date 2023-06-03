//
//  Color.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 28.05.2023.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
}


struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
