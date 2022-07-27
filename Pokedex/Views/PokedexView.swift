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
    @StateObject var viewModel = PokemonViewModel()
    @State private var searchPokemon = ""
    @State var pokemons = ["bulbasaur", "ivysaur", "venusaur"]
    var body: some View {
        NavigationView{
            if #available(iOS 15.0, *) {
                ScrollView{
                    LazyVGrid(columns: gridItems,spacing: 20, content: {
                        ForEach(viewModel.pokemon.filter({$0.name.capitalized.contains(searchPokemon) || searchPokemon.isEmpty})){ pokemon in
                            
                            NavigationLink {
                               PokemonPage(pokemon: pokemon, viewModel: viewModel)
                            } label: {
                                PokemonCell(pokemon: pokemon, viewModel: viewModel)
                            }

                            
                                
                            

                           
                            
                           
                        }
                    } )}.searchable(text: $searchPokemon)
                    
                        
                    .navigationTitle("Pokedex")
                   
            } else {
                // Fallback on earlier versions
            }
        }
       
    }
    
    
    }


struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
