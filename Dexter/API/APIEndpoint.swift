//
//  APIEndpoint.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/31/23.
//

import Foundation

enum APIEndpoint: String {
    case generation,
         pokedex,
         version,
         item,
         location,
         machine,
         move,
         ability,
         nature,
         pokemonSpecies = "pokemon-species",
         pokemon,
         stat,
         type
}
