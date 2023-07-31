//
//  Stats.swift
//  Dexter
//
//  Created by Sean O'Connor on 7/31/23.
//

import Foundation

struct PkmnStat: Codable, Identifiable, Nameable {
    var id: Int
    var name: String
    var gameIndex: Int
    var isBattleOnly: Bool
    var affectingMoves: PkmnMoveStatAffectSets
    var affectingNatures: PkmnNatureStatAffectSets
    var characteristics: [PkmnAPIResource]
    var moveDamageClass: PkmnNamedAPIResource
    var names: [PkmnName]
}

struct PkmnMoveStatAffectSets: Codable {
    var increase: PkmnMoveStatAffect
    var decrease: PkmnMoveStatAffect
}

struct PkmnMoveStatAffect: Codable {
    var change: Int
    var move: PkmnNamedAPIResource
}

struct PkmnNatureStatAffectSets: Codable {
    var increase: PkmnNamedAPIResource
    var decrease: PkmnNamedAPIResource
}
