//
//  ContentView.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var viewModel = ViewModel()
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                    ForEach(viewModel.filteredPokemon) { pokemon in
                        NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                            PokemonView(pokemon: pokemon)
                        }
                    }
                }
                .animation(.easeInOut(duration: 0.3), value: viewModel.filteredPokemon.count)
                .navigationTitle("Pokedex")
                .navigationBarTitleDisplayMode(.inline)
            }
            .searchable(text: $viewModel.searchText)
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    ContentView()
}
