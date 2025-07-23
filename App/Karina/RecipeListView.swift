//
//  RecipeListView.swift
//  App
//
//  Created by krnklvx on 23.07.2025.
//


import SwiftUI

struct RecipeListView: View {
    @State private var recipes: [Recipe] = RecipeData.recipes //список блюд может меняться
    @State private var searchText: String = "" //текст в стрроке поиска

    let columns = [
        GridItem(.fixed(UIScreen.main.bounds.width / 2 - 24), spacing: 20), //каждая колонка половина экрана и отступы
        GridItem(.fixed(UIScreen.main.bounds.width / 2 - 24), spacing: 20)// UIScreen.main.bounds.width ширина экрана устройства в поинтах
    ]
    
    var filteredRecipes: [Recipe] {
           if searchText.isEmpty {
               return recipes
           } else {
               return recipes.filter { $0.name.lowercased().contains(searchText.lowercased()) } //параметр в замыкании как фор ич
           }
       }

    var body: some View {
        NavigationStack { //переход на другие экран
            VStack {//Вертикальное расположение элементов
                // поле ввода для поиска
                TextField("Поиск рецептов...", text: $searchText)
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("GlamourPink"), lineWidth: 2) // Цвет и толщина обводки
                        )
                    .padding([.horizontal, .top]) //отступы слева справа и сверху
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 8) { //LAzy ленивая - элементы создаются тогда когда попадают на экран экономит память v- сетка заполняется сверху вниз справа налево
                        ForEach(recipes) { recipe in //для каждого ркцепта создаем карточку
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) { //при нажатии на карточку открывается подробная информация
                                RecipeCard(recipe: recipe)
                                    .padding(5)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("✨Меню✨")
            .background(Color("GlamourPink").opacity(0.1))
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) { //создает объект в провой стороне
                    NavigationLink(destination: CreateRecipeView(recipes: $recipes)) { //переход к созданию привязка
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                            .foregroundColor(Color("GlamourPink"))
                    }
                }
            }
        }
    }
}

struct RecipeCard: View {
    let recipe: Recipe
    // размер квадрата
    private let imageSize = UIScreen.main.bounds.width / 2 - 24

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(recipe.imageName)
                .resizable() //картинка гибкая
                .scaledToFill() //картинка заполняет всё пространство может выйти за границы
                .frame(width: imageSize, height: imageSize)
                .clipped() //обрезает вышедшее за границу
                .cornerRadius(10)

            Text(recipe.name)
                .font(.headline)
                .italic()
                .foregroundColor(Color("GlamourPink"))

            Text("\(recipe.calories) ккал • \(recipe.time) мин")
                .font(.subheadline)
                .italic()
                .foregroundStyle(.gray)
                .padding(4)
        }
        .padding(8) //отступы вокруг карточки
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .shadow(color: Color("GlamourPink").opacity(0.3), radius: 6, x: 0, y: 4) //тень вниз
        )
    }
}
