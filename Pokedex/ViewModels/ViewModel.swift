//
//  ViewModel.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 21/10/2023.
//

import SwiftUI

final class ViewModel: ObservableObject {
    private let pokemonManager = PokemonManager()
    
    @Published var pokemonList = PokemonList()
    @Published var pokemonDetail: PokemonDetail?
    @Published var searchText = ""
    
    var filteredPokemon: PokemonList {
        return searchText.isEmpty ? pokemonList : pokemonList.filter {
            $0.name.contains(searchText.lowercased())
        }
    }
    
    init() {
        self.pokemonList = pokemonManager.getPokemon()
    }
    
    func getPokemonIndex(pokemon: Pokemon) -> Int {
        if let index = self.pokemonList.firstIndex(of: pokemon) {
            return index + 1
        }
        return 0
    }
    
    func getDetail(pokemon: Pokemon) {
        let id = getPokemonIndex(pokemon: pokemon)
        
        self.pokemonDetail = PokemonDetail(id: 0, weight: 0, height: 0)
        
        pokemonManager.getPokemonDetail(id: id) { detail in
            DispatchQueue.main.async {
                self.pokemonDetail = detail
            }
            
        }
    }
    
    func formatHW(value: Int) -> String {
        let dValue = Double(value)
        let string = String(format: "%.2f", dValue / 10)
        
        return string
    }
}
