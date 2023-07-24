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
        @Published public var items = [NamedAPIResource]()

        var page = 1
        let limit = 20

        func fetchData() {
            PokeAPI.shared.fetchPokemonSpeciesList(offset: (page - 1) * limit, limit: limit) { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.data = data
                        self?.items += self?.data?.results ?? []
                        self?.page += 1
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
