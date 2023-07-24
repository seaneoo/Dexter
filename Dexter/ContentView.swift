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
                LazyVStack(alignment: .leading, spacing: 20) {
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
            ZStack(alignment: .center) {
                Color.gray

                HStack {
                    Text("\(entry.entryNumber)")
                        .foregroundColor(.white)

                    Text(entry.pokemonSpecies.name)
                        .foregroundColor(.white)
                }.padding()

            }.frame(height: 100)
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
