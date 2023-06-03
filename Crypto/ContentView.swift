//
//  ContentView.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 28.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.secondaryText
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
