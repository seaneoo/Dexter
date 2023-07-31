//
//  Types.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/31/23.
//

import Foundation
import SwiftUI

enum PkmnTypeColors: String, CaseIterable {
    case bug, dark, dragon, electric, fairy, fighting, fire, flying, ghost, grass, ground, ice, normal, poison, psychic, rock, steel, water

    var color: Color {
        switch self {
        case .bug: return Color("Bug")
        case .dark: return Color("Dark")
        case .dragon: return Color("Dragon")
        case .electric: return Color("Electric")
        case .fairy: return Color("Fairy")
        case .fighting: return Color("Fighting")
        case .fire: return Color("Fire")
        case .flying: return Color("Flying")
        case .ghost: return Color("Ghost")
        case .grass: return Color("Grass")
        case .ground: return Color("Ground")
        case .ice: return Color("Ice")
        case .normal: return Color("Normal")
        case .poison: return Color("Poison")
        case .psychic: return Color("Psychic")
        case .rock: return Color("Rock")
        case .steel: return Color("Steel")
        case .water: return Color("Water")
        }
    }
}

struct PkmnType: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
    var names: [PkmnName]
    var pokemon: [PkmnTypePokemon]
    var moves: [PkmnNamedAPIResource]
}

struct PkmnTypePokemon: Codable {
    var slot: Int
    var pokemon: PkmnNamedAPIResource
}

struct PkmnTypeRelations: Codable {
    var noDamageTo: [PkmnNamedAPIResource]
    var halfDamageTo: [PkmnNamedAPIResource]
    var doubleDamageTo: [PkmnNamedAPIResource]
    var noDamageFrom: [PkmnNamedAPIResource]
    var halfDamageFrom: [PkmnNamedAPIResource]
    var doubleDamageFrom: [PkmnNamedAPIResource]
}

struct PkmnTypeRelationsPast: Codable {
    var generation: PkmnNamedAPIResource
    var damageRelations: PkmnTypeRelations
}
