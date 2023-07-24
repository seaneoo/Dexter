//
//  ContentView.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/20/23.
//

import CachedAsyncImage
import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
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
            HStack(spacing: 20) {
                CachedAsyncImage(url: URL(string: "https://img.pokemondb.net/artwork/avif/\(entry.pokemonSpecies.name).avif")) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 100, height: 100)

                Text(entry.pokemonSpecies.name)

                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding()
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
