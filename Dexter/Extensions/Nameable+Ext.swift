//
//  Nameable+Ext.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension Nameable {
    func englishName() -> String {
        if let item = names.first(where: { $0.language.name == "en" }) {
            return item.name
        } else {
            return name
        }
    }
}
