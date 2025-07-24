//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Азалия Хайруллина on 22.07.2025.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RecipeDetailView(recipe: RecipeData.recipes.first!)
            }
        }
    }
}
