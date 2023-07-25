//
//  Utility.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

enum LanguageCode: String {
    case de, en, es, fr, it, ja, ja_hrkt = "ja-Hrkt", ko, roomaji, zh_hant = "zh-Hant", zhHans = "zh-Hans"
}

protocol Nameable {
    var id: Int { get set }
    var name: String { get set }
    var names: [Name] { get set }
}

struct Language: Codable, Nameable {
    var id: Int
    var name: String
    var official: Bool
    var iso639: String
    var iso3166: String
    var names: [Name]
}

struct APIResource: Codable {
    var url: String
}

struct Name: Codable {
    var name: String
    var language: NamedAPIResource
}

struct NamedAPIResource: Codable {
    var name: String
    var url: String
}
