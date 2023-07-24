//
//  Pokemon.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

// MARK: Pokemon endpoint

struct Pokemon: Codable, Identifiable {
    var id: Int
    var name: String
    var baseExperience: Int?
    var height: Int?
    var isDefault: Bool?
    var order: Int?
    var weight: Int?
    var abilities: [PokemonAbility]?
    var forms: [NamedAPIResource]?
    var heldItems: [PokemonHeldItem]?
    var locationAreaEncounters: String?
    var pastTypes: [PokemonTypePast]?
    var species: NamedAPIResource?
    var types: [PokemonType]?
}

struct PokemonAbility: Codable {
    var isHidden: Bool
    var slot: Int
    var ability: NamedAPIResource
}

struct PokemonType: Codable {
    var slot: Int
    var type: NamedAPIResource
}

struct PokemonFormType: Codable {
    var slot: Int
    var type: NamedAPIResource
}

struct PokemonTypePast: Codable {
    var generation: NamedAPIResource
    var types: [PokemonType]
}

struct PokemonHeldItem: Codable {
    var item: NamedAPIResource
    var versionDetails: [PokemonHeldItemVersion]
}

struct PokemonHeldItemVersion: Codable {
    var version: NamedAPIResource
    var rarity: Int
}

// MARK: Pokemon Species endpoint

struct PokemonSpecies: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
    var names: [Name]
    var order: Int?
    var genderRate: Int?
    var captureRate: Int?
    var baseHappiness: Int?
    var isBaby: Bool?
    var isLegendary: Bool?
    var isMythical: Bool?
    var hatchCounter: Int?
    var hasGenderDifferences: Bool?
    var formsSwitchable: Bool?
    var growthRate: NamedAPIResource?
    var pokedexNumbers: [PokemonSpeciesDexEntry]?
    var eggGroups: [NamedAPIResource]?
    var color: NamedAPIResource?
    var shape: NamedAPIResource?
    var evolvesFromSpecies: NamedAPIResource??
    var evolutionChain: APIResource?
    var habitat: NamedAPIResource?
    var generation: NamedAPIResource?
    var genera: [Genus]?
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
