//
//  PokemonDetailsView-ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension PokemonDetailsView {
    @MainActor class ViewModel: ObservableObject {
        @Published public var species: PokemonSpecies?
        @Published public var pokemon: Pokemon?

        private var id: Int

        init(id: Int) {
            self.id = id
        }

        func fetchSpecies() {
            PokeAPI.shared.fetchPokemonSpecies(id: id) { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.species = data
                    }
                case let .failure(error):
                    DispatchQueue.main.async {
                        self?.species = nil
                        print(String(describing: error))
                    }
                }
            }
        }

        func fetchPokemon() {
            PokeAPI.shared.fetchPokemon(id: id) { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.pokemon = data
                    }
                case let .failure(error):
                    DispatchQueue.main.async {
                        self?.pokemon = nil
                        print(String(describing: error))
                    }
                }
            }
        }

        func fetchData() {
            fetchSpecies()
            fetchPokemon()
        }
    }
}
