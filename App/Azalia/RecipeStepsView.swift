//
//  RecipeStepsView.swift
//  RecipeApp
//
//  Created by Азалия Хайруллина on 22.07.2025.
//
import SwiftUI

struct RecipeStepsView: View {
    let recipe: Recipe
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.pink)
                }
                Spacer()
            }
            .padding([.leading, .top])

            Text("Рецепт: \(recipe.name)")
                .font(.title2)
                .bold()
                .padding()

            ForEach(recipe.steps.indices, id: \.self) { idx in
                Text("\(idx + 1). \(recipe.steps[idx])")
                    .padding(.horizontal)
                    .padding(.vertical, 4)
            }
            Spacer()
        }
        .background(Color.pink.opacity(0.05))
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}
