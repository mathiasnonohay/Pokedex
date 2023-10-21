//
//  PokemonService.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 21/10/2023.
//
// https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151

import Foundation

class PokemonService {
//    func getData(completion: @escaping ([Pokemon]) -> ()) {
//        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151") else { return }
//        
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data else { return }
//            
//            let pokemonList = try! JSONDecoder().decode(PokemonList.self, from: data)
//            
//            DispatchQueue.main.async {
//                completion(pokemonList.results)
//            }
//            
//        }.resume()
//    }
//    
//    func getSelected(url: String, completion: @escaping (PokemonSprites) -> ()) {
//        guard let url = URL(string: url) else { return }
//        
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data else { return }
//            
//            let pokemonSprite = try! JSONDecoder().decode(PokemonDetail.self, from: data)
//            
//            DispatchQueue.main.async {
//                completion(pokemonSprite.sprites)
//            }
//            
//        }.resume()
//    }
}
