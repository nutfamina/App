//
//  RecipeListView.swift
//  App
//
//  Created by krnklvx on 23.07.2025.
//


import SwiftUI

struct RecipeListView: View {
    @Binding var recipes: [Recipe] //связывание с массивом рецептов и иззрбанных
    @Binding var favorites: [Recipe]
    @State private var searchText: String = ""
    
    private var gridColumns: [GridItem] { //создаем массив из 2 колонок для сетки
        let width = UIScreen.main.bounds.width / 2 - 24 //ширина колонки это половина ширины экрана минус отступы
        return [
            GridItem(.fixed(width), spacing: 20), //между колонками отступ 20
            GridItem(.fixed(width), spacing: 20)
        ]
    }
    
    private var filteredRecipes: [Recipe] {
        if searchText.isEmpty { //если строка  пуста
            return recipes // //возвращаем все рецепты
        } else {
            let searchLower = searchText.lowercased() //делаем нижний регистр
            return recipes.filter { $0.name.lowercased().contains(searchLower) //проверяем на соответсвие
            }
        }
    }
    
    private var searchField: some View { //возвращает вью
        TextField("Поиск рецептов...", text: $searchText) //поле ввода
            .padding(8) //отступы
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay( //поверх поля текстового
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("GlamourPink"), lineWidth: 2) //рисует только контур
            )
    }
    
    private var recipeGrid: some View {
        ScrollView {
            LazyVGrid(columns: gridColumns, spacing: 8) {//сетка использует раннее настраиваемые колонки
                ForEach(filteredRecipes) { recipe in //перебор рецептов
                    NavigationLink(destination:  RecipeDetailView(recipe: recipe, favorites: $favorites)) {                          RecipeCard(recipe: recipe) //переход к деталям рецепта
                            .padding(5)
                    }
                }
            }
            .padding()
        }
    }
    
    var body: some View {
        NavigationStack { //навигация
            VStack { //вертикальный стек
                searchField //поле поиска
                    .padding([.horizontal, .top]) //отступы слева справа и сверху
                
                recipeGrid//сетка рецептов
            }
            .navigationTitle("✨Меню✨")
            .background(Color("GlamourPink").opacity(0.1))
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) { //в правой части навигационной панели
                    NavigationLink(destination: CreateRecipeView(recipes: $recipes)) { //кнопка-ссылка для перехода на экран создания рецепта передает blinding массив
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                            .foregroundColor(Color("GlamourPink"))
                    }
                }
            }
        }
    }
}

struct RecipeCard: View { //карточка рецепта
    let recipe: Recipe
    private let imageSize = UIScreen.main.bounds.width / 2 - 24 //половина ширины экрана минус отступы
    
    private var recipeImage: some View { //отображение изображения
        Image(recipe.imageName)
            .resizable() //гибкий
            .scaledToFill()//заполняет всё пространство мб обрежется
    }
    
    private var recipeInfo: some View {
        VStack(alignment: .leading, spacing: 6) { //выравнивание по левому краю
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
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) { //выравнивание по левому краю
            recipeImage
                .frame(width: imageSize, height: imageSize) //фикс размер
                .clipped()
                .cornerRadius(10)
            
            recipeInfo
        }
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .shadow(color: Color("GlamourPink").opacity(0.3), radius: 6, x: 0, y: 4)
        )
    }
}
