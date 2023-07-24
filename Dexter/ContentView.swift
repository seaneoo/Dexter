//
//  ContentView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = ContentView.ViewModel()

    var body: some View {
        NavigationStack {
            VStack {
            }
            .navigationTitle("Dexter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
