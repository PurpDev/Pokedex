//
//  Pokemon.swift
//  Pokedex
//
//  Created by Augustin Diabira on 22/12/2021.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id:Int
    let name:String
    let imageUrl:String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbisar", imageUrl: "1", type: "poison"),
    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "poison"),
    .init(id: 2, name: "Venusaur", imageUrl: "1", type: "poison"),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "poison"),
    .init(id: 4, name: "Bulbisar", imageUrl: "1", type: "poison"),
    .init(id: 5, name: "Bulbisar", imageUrl: "1", type: "poison")
]
