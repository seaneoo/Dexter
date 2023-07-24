//
//  ContentView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .center, spacing: 0) {
                    if vm.data != nil {
                        dex
                    } else {
                        loading
                    }
                }
            }
            .navigationTitle("Dexter")
            .padding([.horizontal])
            .task {
                vm.fetchData()
            }
        }
    }

    @ViewBuilder
    var dex: some View {
        ForEach(vm.entries, id: \.entryNumber) { entry in
            NavigationLink(destination: {
                PokemonDetailsView(id: entry.entryNumber)
            }, label: {
                PokemonCellView(id: entry.entryNumber)
            })
            .frame(width: 150, height: 150)
        }
    }

    @ViewBuilder
    var loading: some View {
        VStack(alignment: .center) {
            ProgressView("Loading")
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
