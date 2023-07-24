//
//  PokemonCellView-ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension PokemonCellView {
    @MainActor class ViewModel: ObservableObject {
        @Published public var species: PokemonSpecies?

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
    }
}
