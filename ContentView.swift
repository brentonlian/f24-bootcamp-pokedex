//
//  ContentView.swift
//  f24-pokedex
//
//  Created by Brenton on 10/29/24.
//

import SwiftUI

struct ContentView: View {
    private let pokemonList = PokedexService.shared.pokemon
    
    var body: some View {
        NavigationStack {
            List(pokemonList) { pokemon in
                NavigationLink(pokemon.name) {
                    PokemonView(pokemon: pokemon)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

