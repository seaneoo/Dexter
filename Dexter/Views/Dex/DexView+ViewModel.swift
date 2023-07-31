//
//  DexView+ViewModel.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension DexView {
    @MainActor final class ViewModel: ObservableObject {
        @Published var results = [NamedAPIResource]()
        @Published var loading = false

        private var page: Int
        private var limit: Int

        init(page: Int = 1, limit: Int = 10) {
            self.page = page
            self.limit = limit
        }

        func fetch() {
            guard !loading else { return }

            loading = true

            PokeAPI.shared.fetchResourceList(endpoint: .pokemonSpecies, offset: (page - 1) * limit, limit: limit) { [weak self] result in
                switch result {
                case let .success(data):
                    DispatchQueue.main.async {
                        self?.results += data.results
                        self?.page += 1
                        self?.loading = false
                    }
                case let .failure(error):
                    DispatchQueue.main.async {
                        self?.loading = false
                    }
                    print(String(describing: error))
                }
            }
        }
    }
}
