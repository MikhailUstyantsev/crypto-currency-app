//
//  View.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 28.05.2023.
//

import SwiftUI

extension View {
    func withoutAnimation() -> some View {
        self.animation(nil, value: UUID())
    }
}
