
//
//  TabbarView.swift
//  App
//
//  Created by krnklvx on 22.07.2025.
//
import SwiftUI

struct TabBarView: View {
    @State private var recipes = RecipeData.recipes
    @State private var favorites: [Recipe] = []

    var body: some View {
        TabView {
            RecipeListView(recipes: $recipes, favorites: $favorites)
                .tabItem {
                    Label("Меню", systemImage: "list.bullet")
                }

            FavoritesView(favorites: $favorites) //синхороизирует данные 
                .tabItem {
                    Label("Избранное", systemImage: "heart.fill")
                }

            TipsView()
                .tabItem {
                    Label("Советы", systemImage: "lightbulb")
                }
        }
        .accentColor(Color("GlamourPink"))
    }
}

