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

    func fetchPokemonSpecies(id: Int, completion: @escaping Completion<PokemonSpecies>) {
        let url = "https://pokeapi.co/api/v2/pokemon-species/\(id)"
        api.perform(for: PokemonSpecies.self, from: url, completion: completion)
    }

    func fetchPokemonSpeciesList(offset: Int, limit: Int, completion: @escaping Completion<NamedAPIResourceList>) {
        let url = "https://pokeapi.co/api/v2/pokemon-species?offset=\(offset)&limit=\(limit)"
        api.perform(for: NamedAPIResourceList.self, from: url, completion: completion)
    }

    func fetchPokedex(for name: String, completion: @escaping Completion<Pokedex>) {
        let url = "https://pokeapi.co/api/v2/pokedex/\(name)"
        api.perform(for: Pokedex.self, from: url, completion: completion)
    }
}
