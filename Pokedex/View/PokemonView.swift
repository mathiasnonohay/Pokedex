//
//  PokemonView.swift
//  Pokedex
//
//  Created by Mathias Nonohay on 20/10/2023.
//

import SwiftUI

struct PokemonView: View {
    @EnvironmentObject var viewModel: ViewModel
    let pokemon: Pokemon
    let dimensions: Double = 140.0
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(viewModel.getPokemonIndex(pokemon: pokemon)).png")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: dimensions, height: dimensions)
            } placeholder: {
                ProgressView()
                    .frame(width: dimensions, height: dimensions)
            }
            .background(.thinMaterial)
            .clipShape(Circle())
            
            Text("\(pokemon.name.capitalized)")
                .font(.system(size: 16, weight: .regular, design: .monospaced))
                .padding(.bottom, 20)
        }
    }
}

#Preview {
    PokemonView(pokemon: Pokemon.samplePokemon)
        .environmentObject(ViewModel())
}
