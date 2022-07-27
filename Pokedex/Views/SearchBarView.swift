//
//  SearchBarView.swift
//  Pokedex
//
//  Created by Augustin Diabira on 08/07/2022.
//

import SwiftUI

struct SearchBarView: View {
    let pokemon:Pokemon
    let viewModel:PokemonViewModel
    let backgroundColor: Color
    @State var searchPokemon = ""
    
    init (pokemon: Pokemon, viewModel: PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(ForType: pokemon.type))
    }
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                VStack{
                    List {
                        ForEach(ssearch, id: \.self) {countre in
                            NavigationLink {
                                
                            } label: {
                                PokemonCell(pokemon: pokemon, viewModel: viewModel)
                        }
                        }

                    }
                    
                }.searchable(text: $searchPokemon)
                    
            } else {
                // Fallback on earlier versions
            }
        }
    }
    
    var ssearch: [String ]{
        let sPokemon = [pokemon.name].map{$0.lowercased()}
        
        return searchPokemon == "" ? sPokemon : sPokemon.filter{
            $0.contains(searchPokemon.lowercased())
        }
    }
}


