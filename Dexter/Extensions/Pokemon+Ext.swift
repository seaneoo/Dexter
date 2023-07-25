//
//  Pokemon+Ext.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

protocol FormattableId {
    func formattedId() -> String
}

extension FormattableId {
    func formattedId(for id: Int) -> String {
        String(format: "#%03d", id)
    }
}

extension PokemonSpecies: FormattableId {
    func formattedId() -> String {
        formattedId(for: id)
    }
}

extension Pokemon: FormattableId {
    func formattedId() -> String {
        formattedId(for: id)
    }
}
