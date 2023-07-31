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
        case .bug: return Color(hex: "A6B91A")
        case .dark: return Color(hex: "705746")
        case .dragon: return Color(hex: "6F35FC")
        case .electric: return Color(hex: "F7D02C")
        case .fairy: return Color(hex: "D685AD")
        case .fighting: return Color(hex: "C22E28")
        case .fire: return Color(hex: "EE8130")
        case .flying: return Color(hex: "A98FF3")
        case .ghost: return Color(hex: "735797")
        case .grass: return Color(hex: "7AC74C")
        case .ground: return Color(hex: "E2BF65")
        case .ice: return Color(hex: "96D9D6")
        case .normal: return Color(hex: "A8A77A")
        case .poison: return Color(hex: "A33EA1")
        case .psychic: return Color(hex: "F95587")
        case .rock: return Color(hex: "B6A136")
        case .steel: return Color(hex: "B7B7CE")
        case .water: return Color(hex: "6390F0")
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
