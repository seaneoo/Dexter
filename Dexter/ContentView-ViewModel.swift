//
//  ContentView-ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published public var data: NamedAPIResourceList?
        @Published public var error: Error?

        func fetchData() {
            PokeAPI.shared.fetchPokemonSpeciesList { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.data = data
                        self?.error = nil
                    }
                case let .failure(error):
                    DispatchQueue.main.async {
                        self?.data = nil
                        self?.error = error
                    }
                }
            }
        }
    }
}
