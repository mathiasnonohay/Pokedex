//
//  PokemonManager.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 21/10/2023.
//

import Foundation

class PokemonManager {
    func getPokemon() -> PokemonList {
        let data : PokemonPage = Bundle.main.decode(file: "pokemon.json")
        let pokemon: PokemonList = data.results
        
        return pokemon
    }
    
    func getPokemonDetail(id: Int, _ completion: @escaping (PokemonDetail) -> ()) {
        Bundle.main.fetchData(url: "https://pokeapi.co/api/v2/pokemon/\(id)/", model: PokemonDetail.self) { data in
            completion(data)
        } failure: { error in
            print(error)
        }
    }
}
