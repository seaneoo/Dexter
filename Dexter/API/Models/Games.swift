//
//  Games.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

struct Pokedex: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
    var names: [Name]
    var pokemonEntries: [PokemonEntry]?
}

struct PokemonEntry: Codable {
    var entryNumber: Int
    var pokemonSpecies: NamedAPIResource
}
