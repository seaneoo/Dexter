//
//  PokemonView+ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/31/23.
//

import Foundation

extension PokemonView {
    @MainActor final class ViewModel: ObservableObject {
        @Published var species: PkmnPokemonSpecies?
        @Published var pokemon: PkmnPokemon?
        
        private var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func fetch() {
            PokeAPI.shared.fetchResource(endpoint: .pokemonSpecies, slug: name) { [weak self] (result: Result<PkmnPokemonSpecies, Error>) in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.species = data
                    }
                case let .failure(error):
                    print(String(describing: error))
                }
            }
            
            PokeAPI.shared.fetchResource(endpoint: .pokemon, slug: name) { [weak self] (result: Result<PkmnPokemon, Error>) in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.pokemon = data
                    }
                case let .failure(error):
                    print(String(describing: error))
                }
            }
        }
    }
}
