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
            ZStack {
                CachedAsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(entry.entryNumber).png")) { image in
                    image.resizable().aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
            }
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
