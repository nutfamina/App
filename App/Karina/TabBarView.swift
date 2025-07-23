
//
//  TabbarView.swift
//  App
//
//  Created by krnklvx on 22.07.2025.
//
import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            RecipeListView()
                .tabItem {
                    Label("Меню", systemImage: "list.bullet")
                }

            FavoritesView()
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

#Preview {
    TabBarView()
}


