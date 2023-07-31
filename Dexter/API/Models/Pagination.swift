//
//  Pagination.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/23/23.
//

import Foundation

struct PkmnNamedAPIResourceList: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [PkmnNamedAPIResource]
}
