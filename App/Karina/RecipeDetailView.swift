
//ЗАГЛУШКА


import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe

    var body: some View {
        Text("Детали рецепта: \(recipe.name)")
    }
}
