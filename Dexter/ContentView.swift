//
//  ContentView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                TopNavView()

                TabView {
                    DexView()
                        .tabItem {
                            Label("Dex", systemImage: "scroll")
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
