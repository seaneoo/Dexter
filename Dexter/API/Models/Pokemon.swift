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
//    var gameIndices: [Any]?
    var heldItems: [PokemonHeldItem]?
    var locationAreaEncounters: String?
    var moves: [PokemonMove]?
    var pastTypes: [PokemonTypePast]?
    var sprites: PokemonSprites?
    var species: NamedAPIResource?
    var stats: [PokemonStat]?
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

struct PokemonMove: Codable {
    var move: NamedAPIResource
    var versionGroupDetails: [PokemonMoveVersion]
}

struct PokemonMoveVersion: Codable {
    var moveLearnMethod: NamedAPIResource
    var versionGroup: NamedAPIResource
    var levelLearnedAt: Int
}

struct PokemonStat: Codable {
    var stat: NamedAPIResource
    var effort: Int
    var baseStat: Int
}

struct PokemonSprites: Codable {
    var frontDefault: String
    var frontShiny: String
    var frontFemale: String
    var frontShinyFemale: String
    var backDefault: String
    var backShiny: String
    var backFemale: String
    var backShinyFemale: String
}

// MARK: Pokemon Species endpoint

struct PokemonSpecies: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
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
    var names: [Name]
    var palParkEncounters: [PalParkEncounterArea]?
//    var flavorTextEntries: [FlavorText]?
//    var formDescriptions: [Description]?
    var genera: [Genus]?
    var varieties: [PokemonSpeciesVariety]?
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
    var baseScore: Int
    var rate: Int
    var area: NamedAPIResource
}

struct PokemonSpeciesVariety: Codable {
    var isDefault: Bool
    var pokemon: NamedAPIResource
}
