//
//  Pokemon.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

// MARK: Pokemon Species endpoint

struct PokemonSpecies: Codable, Identifiable {
    var id: Int
    var name: String
    var order: Int
    var genderRate: Int
    var captureRate: Int
    var baseHappiness: Int
    var isBaby: Bool
    var isLegendary: Bool
    var isMythical: Bool
    var hatchCounter: Int
    var hasGenderDifferences: Bool
    var formsSwitchable: Bool
    var growthRate: NamedAPIResource
    var pokedexNumbers: [PokemonSpeciesDexEntry]
    var eggGroups: [NamedAPIResource]
    var color: NamedAPIResource
    var shape: NamedAPIResource
    var evolvesFromSpecies: NamedAPIResource
    var evolutionChain: APIResource
    var habitat: NamedAPIResource
    var generation: NamedAPIResource
    var names: [Name]
    var genera: [Genus]
}

struct Genus: Codable {
    var genus: String
    var language: NamedAPIResource
}

struct PokemonSpeciesDexEntry: Codable {
    var entryNumber: Int
    var pokedex: NamedAPIResource
}

struct PalParkEncounterArea: Codable {
}

struct PokemonSpeciesVariety: Codable {
    var isDefault: Bool
    var pokemon: NamedAPIResource
}
