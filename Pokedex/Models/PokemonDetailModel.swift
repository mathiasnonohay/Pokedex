//
//  PokemonSelected.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 21/10/2023.
//

import Foundation

struct PokemonDetail: Codable {
    var id: Int
//    var sprites: PokemonSprites
    var weight: Int
    var height: Int
}

struct PokemonSprites: Codable {
    var frontDefault: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
