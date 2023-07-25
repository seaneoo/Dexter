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
            ZStack(alignment: .top) {
                TopNavView()

                DexView()
                    .padding(.top, 75)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
