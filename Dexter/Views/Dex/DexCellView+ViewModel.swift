//
//  DexCellView+ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension DexCellView {
    @MainActor final class ViewModel: ObservableObject {
        @Published var result: PokemonSpecies?

        private var name: String

        init(name: String) {
            self.name = name
        }

        func fetch() {
            PokeAPI.shared.fetchPokemonSpecies(name: name) { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.result = data
                    }
                case let .failure(error):
                    print(String(describing: error))
                }
            }
        }
    }
}