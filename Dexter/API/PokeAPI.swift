//
//  PokeAPI.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

class PokeAPI {
    static let shared = PokeAPI()

    private let api = APIService()

    typealias Completion<T> = (Result<T, Error>) -> Void

    func fetchPokemonSpeciesList(completion: @escaping Completion<NamedAPIResourceList>) {
        let url = "https://pokeapi.co/api/v2/pokemon-species"
        api.perform(for: NamedAPIResourceList.self, from: url, completion: completion)
    }
}
