//
//  ContentView.swift
//  Collection Manager
//
//  Created by dleegan on 09/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MyCollectionView()
                .tabItem {
                    Label("Ma bibliothèque", systemImage: "book")
                }
        }
    }
}

#Preview {
    ContentView()
}
