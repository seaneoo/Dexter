//
//  Pokemon+Stubs.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension PokemonSpecies {
    static func stub() -> Self {
        PokemonSpecies(id: 133,
                       name: "eevee",
                       names: [
                           Name(name: "イーブイ", language: NamedAPIResource(name: "ja-Hrkt", url: "")),
                           Name(name: "Eevee", language: NamedAPIResource(name: "en", url: "")),
                       ],
                       varieties: [
                           PokemonSpeciesVariety(isDefault: true, pokemon: NamedAPIResource(name: "eevee", url: "")),
                           PokemonSpeciesVariety(isDefault: false, pokemon: NamedAPIResource(name: "eevee-starter", url: "")),
                           PokemonSpeciesVariety(isDefault: false, pokemon: NamedAPIResource(name: "eevee-gmax", url: "")),
                       ])
    }
}

extension Pokemon {
    static func stub() -> Self {
        Pokemon(id: 6,
                name: "charizard",
                species: NamedAPIResource(name: "charizard", url: ""),
                types: [
                    PokemonType(slot: 1, type: NamedAPIResource(name: "fire", url: "")),
                    PokemonType(slot: 2, type: NamedAPIResource(name: "flying", url: "")),
                ])
    }
}
