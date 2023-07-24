//
//  ContentView-ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published public var data: Pokedex?
        @Published public var entries = [PokemonEntry]()

        func fetchData() {
            PokeAPI.shared.fetchPokedex(for: "national") { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.data = data
                        self?.entries += self?.data?.pokemonEntries ?? []
                    }
                case let .failure(error):
                    DispatchQueue.main.async {
                        self?.data = nil
                        print(error)
                    }
                }
            }
        }
    }
}
