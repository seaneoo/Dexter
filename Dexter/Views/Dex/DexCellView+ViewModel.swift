//
//  DexCellView+ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension DexCellView {
    @MainActor final class ViewModel: ObservableObject {
        @Published var species: PkmnPokemonSpecies?

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
        }
    }
}
