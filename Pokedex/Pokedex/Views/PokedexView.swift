//
//  PokedexView.swift
//  Pokedex
//
//  Created by Augustin Diabira on 22/12/2021.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems,spacing: 20, content: {
                    ForEach(viewModel.pokemon){ pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                } )}.navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
