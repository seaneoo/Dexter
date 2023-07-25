//
//  PokeAPI.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

class PokeAPI {
    static let shared = PokeAPI()

    private let endpoint = "https://pokeapi.co/api/v2"
    private let service = APIService()

    typealias Completion<T> = (Result<T, Error>) -> Void

    func fetchPokemonSpecies(name: String, completion: @escaping Completion<PokemonSpecies>) {
        let url = "\(endpoint)/pokemon-species/\(name)"
        service.perform(for: PokemonSpecies.self, from: url, completion: completion)
    }

    func fetchPokemonSpeciesList(offset: Int, limit: Int, completion: @escaping Completion<NamedAPIResourceList>) {
        let url = "\(endpoint)/pokemon-species?offset=\(offset)&limit=\(limit)"
        service.perform(for: NamedAPIResourceList.self, from: url, completion: completion)
    }

    func fetchPokemon(id: Int, completion: @escaping Completion<Pokemon>) {
        let url = "\(endpoint)/pokemon/\(id)"
        service.perform(for: Pokemon.self, from: url, completion: completion)
    }
}
