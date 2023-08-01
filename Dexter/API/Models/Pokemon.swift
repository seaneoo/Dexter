//
//  Pokemon.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

struct PkmnPokemon: Codable, Identifiable {
    var id: Int
    var name: String
    var baseExperience: Int?
    var height: Int?
    var isDefault: Bool?
    var order: Int?
    var weight: Int?
    var abilities: [PkmnPokemonAbility]?
    var forms: [PkmnNamedAPIResource]?
//    var gameIndices: [PkmnVersionGameIndex]?
    var heldItems: [PkmnPokemonHeldItem]?
    var locationAreaEncounters: String?
    var moves: [PkmnPokemonMove]?
    var pastTypes: [PkmnPokemonTypePast]?
    var sprites: PkmnPokemonSprites?
    var species: PkmnNamedAPIResource?
    var stats: [PkmnPokemonStat]?
    var types: [PkmnPokemonType]?
}

struct PkmnPokemonAbility: Codable {
    var isHidden: Bool
    var slot: Int
    var ability: PkmnNamedAPIResource
}

struct PkmnPokemonType: Codable {
    var slot: Int
    var type: PkmnNamedAPIResource
}

struct PkmnPokemonFormType: Codable {
    var slot: Int
    var type: PkmnNamedAPIResource
}

struct PkmnPokemonTypePast: Codable {
    var generation: PkmnNamedAPIResource
    var types: [PkmnPokemonType]
}

struct PkmnPokemonHeldItem: Codable {
    var item: PkmnNamedAPIResource
    var versionDetails: [PkmnPokemonHeldItemVersion]
}

struct PkmnPokemonHeldItemVersion: Codable {
    var version: PkmnNamedAPIResource
    var rarity: Int
}

struct PkmnPokemonMove: Codable {
    var move: PkmnNamedAPIResource
    var versionGroupDetails: [PkmnPokemonMoveVersion]
}

struct PkmnPokemonMoveVersion: Codable {
    var moveLearnMethod: PkmnNamedAPIResource
    var versionGroup: PkmnNamedAPIResource
    var levelLearnedAt: Int
}

struct PkmnPokemonStat: Codable {
    var stat: PkmnNamedAPIResource
    var effort: Int
    var baseStat: Int
}

struct PkmnPokemonSprites: Codable {
    var frontDefault: String?
    var frontShiny: String?
    var frontFemale: String?
    var frontShinyFemale: String?
    var backDefault: String?
    var backShiny: String?
    var backFemale: String?
    var backShinyFemale: String?
}

struct PkmnPokemonSpecies: Codable, Identifiable, Nameable {
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
    var growthRate: PkmnNamedAPIResource?
    var pokedexNumbers: [PkmnPokemonSpeciesDexEntry]?
    var eggGroups: [PkmnNamedAPIResource]?
    var color: PkmnNamedAPIResource?
    var shape: PkmnNamedAPIResource?
    var evolvesFromSpecies: PkmnNamedAPIResource??
    var evolutionChain: PkmnAPIResource?
    var habitat: PkmnNamedAPIResource?
    var generation: PkmnNamedAPIResource?
    var names: [PkmnName]
    var palParkEncounters: [PkmnPalParkEncounterArea]?
//    var flavorTextEntries: [PkmnFlavorText]?
//    var formDescriptions: [PkmnDescription]?
    var genera: [PkmnGenus]?
    var varieties: [PkmnPokemonSpeciesVariety]?
}

struct PkmnGenus: Codable {
    var genus: String
    var language: PkmnNamedAPIResource
}

struct PkmnPokemonSpeciesDexEntry: Codable {
    var entryNumber: Int
    var pokedex: PkmnNamedAPIResource
}

struct PkmnPalParkEncounterArea: Codable {
    var baseScore: Int
    var rate: Int
    var area: PkmnNamedAPIResource
}

struct PkmnPokemonSpeciesVariety: Codable {
    var isDefault: Bool
    var pokemon: PkmnNamedAPIResource
}
