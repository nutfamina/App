//
//  CreateRecipeView.swift
//  App
//
//  Created by krnklvx on 22.07.2025.
//


import SwiftUI

struct CreateRecipeView: View {
    @Binding var recipes: [Recipe] //ссылка на оригигал

    var body: some View {
        Text("Создание нового рецепта")
    }
}
