//
//  PokemonPage.swift
//  Pokedex
//
//  Created by Augustin Diabira on 10/07/2022.
//

import SwiftUI
import Kingfisher

struct PokemonPage: View {
    let pokemon:Pokemon
    let viewModel:PokemonViewModel
    let backgroundColor: Color
    
    init (pokemon: Pokemon, viewModel: PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(ForType: pokemon.type))
    }
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Rectangle().foregroundColor(backgroundColor).frame(width: 250, height: 350)
                    KFImage(URL(string: pokemon.imageUrl)).resizable().scaledToFit()
                        .frame(width: 168, height: 168)
                        .padding([.top, .trailing], 4)
                }.background(backgroundColor)
               
            }
            
            VStack {
                Text(pokemon.name).bold().font(.largeTitle).fontWeight(.heavy).foregroundColor(backgroundColor)
                
            }
        }
    }
}


