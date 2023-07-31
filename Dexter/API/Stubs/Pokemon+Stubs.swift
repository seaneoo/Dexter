//
//  Pokemon+Stubs.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension PkmnPokemonSpecies {
    static func stub() -> Self {
        PkmnPokemonSpecies(id: 133,
                           name: "eevee",
                           names: [
                               PkmnName(name: "イーブイ", language: PkmnNamedAPIResource(name: "ja-Hrkt", url: "")),
                               PkmnName(name: "Eevee", language: PkmnNamedAPIResource(name: "en", url: "")),
                           ],
                           varieties: [
                               PkmnPokemonSpeciesVariety(isDefault: true, pokemon: PkmnNamedAPIResource(name: "eevee", url: "")),
                               PkmnPokemonSpeciesVariety(isDefault: false, pokemon: PkmnNamedAPIResource(name: "eevee-starter", url: "")),
                               PkmnPokemonSpeciesVariety(isDefault: false, pokemon: PkmnNamedAPIResource(name: "eevee-gmax", url: "")),
                           ])
    }
}

extension PkmnPokemon {
    static func stub() -> Self {
        PkmnPokemon(id: 6,
                    name: "charizard",
                    species: PkmnNamedAPIResource(name: "charizard", url: ""),
                    types: [
                        PkmnPokemonType(slot: 1, type: PkmnNamedAPIResource(name: "fire", url: "")),
                        PkmnPokemonType(slot: 2, type: PkmnNamedAPIResource(name: "flying", url: "")),
                    ])
    }
}
