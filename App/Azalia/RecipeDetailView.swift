//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Азалия Хайруллина on 22.07.2025.
//


import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe //отображаем 1 рецепт
    @Binding var favorites: [Recipe]
    @State private var servings: Int = 1
    @State private var isFavorite: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            HStack { //кнопка избранное
                Spacer()
                Button(action: { isFavorite.toggle() }) { //при нажатии меняем цвет кнопки
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .font(.title2)
                        .foregroundColor(.red)
                }
            }
            .padding([.horizontal, .top])

            Image(recipe.imageName) //изображение блюда
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .padding(.horizontal)

            Text("\(recipe.calories) ккал • \(recipe.time) мин") //калории и время
                .font(.subheadline)
                .italic()
                .padding(.horizontal)

            HStack(spacing: 16) { //порции
                Text("Порции: \(servings)")
                    .font(.headline)
                Spacer()
                HStack(spacing: 0) {
                    Button(action: { if servings > 1 { servings -= 1 } }) {
                        Image(systemName: "minus")
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                    }
                    .background(Color.white)
                    
                    Rectangle()
                        .frame(width: 1, height: 25)
                        .foregroundColor(Color.gray.opacity(0.3))

                    Button(action: { servings += 1 }) {
                        Image(systemName: "plus")
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                    }
                    .background(Color.white)
                }
                .overlay( //добавила рамку вокруг кнопок
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.pink, lineWidth: 1)
                )
            }
            .padding(.horizontal)

            Text("Ингредиенты") //ингридиенты
                .font(.headline)
                .padding(.horizontal)
                .padding(.top, 6)

            VStack(spacing: 0) {
                ForEach(recipe.ingredients) { ing in
                    HStack {
                        Text(ing.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("\(ing.amountPerServing * Double(servings), specifier: "%.0f") \(ing.unit)")
                            .frame(width: 80, alignment: .trailing)
                    }
                    .font(.system(size: 16))
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color.white)

                    if ing.id != recipe.ingredients.last?.id {
                        Divider().background(Color.gray.opacity(0.5))
                            .padding(.leading)
                    }
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.pink, lineWidth: 1)
            )
            .padding(.horizontal)

            Spacer()

            NavigationLink(destination: RecipeStepsView(recipe: recipe)) { //кнопка показать рецептдля перехода на следующий экран
                Text("Показать рецепт")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
        }
        .background(Color.pink.opacity(0.05))
        .navigationBarTitleDisplayMode(.inline)
    }
}
