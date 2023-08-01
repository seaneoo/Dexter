//
//  Abilities.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/31/23.
//

import Foundation

struct PkmnAbility: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
    var isMainSeries: Bool
    var generation: PkmnNamedAPIResource
    var names: [PkmnName]
//    var effectEntries: [PkmnVerboseEffect]
    var effectChanges: [PkmnAbilityEffectChange]
    var flavorTextEntries: [PkmnAbilityFlavorText]
    var pokemon: [PkmnAbilityPokemon]
}

struct PkmnAbilityEffectChange: Codable {
//    var effectEntries: [PkmnEffect]
    var versionGroup: PkmnNamedAPIResource
}

struct PkmnAbilityFlavorText: Codable {
    var flavorText: String
    var language: PkmnNamedAPIResource
    var versionGroup: PkmnNamedAPIResource
}

struct PkmnAbilityPokemon: Codable {
    var isHidden: Bool
    var slot: Int
    var pokemon: PkmnNamedAPIResource
}
