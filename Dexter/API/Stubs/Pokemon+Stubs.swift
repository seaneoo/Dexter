//
//  Pokemon+Stubs.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension Pokemon {
    static func stub() -> Self {
        Pokemon(id: 133, name: "eevee", baseExperience: 65, height: 3, isDefault: true, order: 215, weight: 65, abilities: nil, forms: nil, heldItems: nil, locationAreaEncounters: nil, pastTypes: nil, species: NamedAPIResource(name: "eevee", url: ""), types: [PokemonType.stub()])
    }
}

extension PokemonType {
    static func stub() -> Self {
        PokemonType(slot: 1, type: NamedAPIResource(name: "normal", url: ""))
    }
}

extension PokemonSpecies {
    static func stub() -> Self {
        PokemonSpecies(id: 133, name: "eevee", names: [Name(name: "イーブイ", language: NamedAPIResource(name: "ja-Hrkt", url: "")), Name(name: "Eevee", language: NamedAPIResource(name: "en", url: ""))])
    }
}
