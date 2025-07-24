
import SwiftUI

struct FavoritesView: View {
    @Binding var favorites: [Recipe]
    
    // колонки
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        NavigationStack {
            VStack {
                if favorites.isEmpty {
                    Text("Пока нет избранных рецептов")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    ScrollView {
                        // увеличиваем расстояние между колонками
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(favorites) { recipe in
                                NavigationLink(destination: RecipeDetailView(recipe: recipe, favorites: $favorites)) {
                                    RecipeCard(recipe: recipe)
                                        .padding(.horizontal, 8)  //отступ по бокам карточки
                                }
                            }
                        }
                        .padding(.horizontal, 16)  //отступ по краям экрана
                    }
                }
            }
            .navigationTitle("Избранное")
        }
    }
}
