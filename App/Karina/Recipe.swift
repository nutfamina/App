
//
//  Recipe.swift
//  App
//
//  Created by krnklvx on 22.07.2025.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    var name: String
    var imageName: String
    var calories: Int
    var time: Int
    var ingredients: [Ingredient]
    var steps: [String]
}

struct Ingredient: Identifiable {
    let id = UUID()
    var name: String
    var amountPerServing: Double
    var unit: String
}
