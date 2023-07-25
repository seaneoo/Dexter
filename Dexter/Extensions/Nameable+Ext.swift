//
//  Nameable+Ext.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/24/23.
//

import Foundation

extension Nameable {
    func translate(lang: LanguageCode = .en) -> String {
        if let item = names.first(where: { $0.language.name == lang.rawValue }) {
            return item.name
        } else {
            return name
        }
    }
}
