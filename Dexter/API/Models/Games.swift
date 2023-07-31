//
//  Games.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

struct PkmnPokedex: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
    var names: [PkmnName]
    var pokemonEntries: [PkmnPokemonEntry]?
}

struct PkmnPokemonEntry: Codable {
    var entryNumber: Int
    var pokemonSpecies: PkmnNamedAPIResource
}
