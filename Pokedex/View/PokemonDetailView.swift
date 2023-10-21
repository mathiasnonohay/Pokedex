//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 20/10/2023.
//

import SwiftUI

struct PokemonDetailView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    let pokemon: Pokemon
    @State var searchText = ""
    
    var body: some View {
        VStack {
            PokemonView(pokemon: pokemon)
            
            VStack(spacing: 10) {
                Text("**ID**: \(viewModel.pokemonDetail?.id ?? 0)")
                Text("**Weight**: \(viewModel.formatHW(value: viewModel.pokemonDetail?.weight ?? 0)) KG")
                Text("**Height**: \(viewModel.formatHW(value: viewModel.pokemonDetail?.height ?? 0)) M")
            }
        }
        .onAppear {
            viewModel.getDetail(pokemon: pokemon)
        }
    }
}

#Preview {
    PokemonDetailView(pokemon: Pokemon.samplePokemon)
        .environmentObject(ViewModel())
}
