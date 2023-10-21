//
//  Pokemon.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 21/10/2023.
//

import Foundation

struct PokemonPage: Codable {
    let count: Int
    let next: String
    let previous: String?
    let results: PokemonList
}

typealias PokemonList = [Pokemon]
struct Pokemon: Codable, Identifiable, Equatable {
    let id = UUID()
    var name: String
    var url: String
    
    static var samplePokemon = Pokemon(name: "bulbasaur", url:  "https://pokeapi.co/api/v2/pokemon/1/")
}
