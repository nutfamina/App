//
//  RecipeData.swift
//  App
//
//  Created by krnklvx on 22.07.2025.
//


struct RecipeData {
    static let recipes = [
        Recipe(
            name: "Пельмени",
            imageName: "pelmeni",
            calories: 450,
            time: 30,
            ingredients: [
                Ingredient(name: "Мука", amountPerServing: 200, unit: "г"),
                Ingredient(name: "Мясо", amountPerServing: 300, unit: "г"),
                Ingredient(name: "Лук", amountPerServing: 50, unit: "г")
            ],
            steps: [
                "Замесить тесто из муки.",
                "Приготовить фарш из мяса и лука.",
                "Сформировать пельмени и варить 15 минут."
            ]
        ),
        Recipe(
            name: "Омлет",
            imageName: "omlet",
            calories: 200,
            time: 10,
            ingredients: [
                Ingredient(name: "Яйца", amountPerServing: 2, unit: "шт"),
                Ingredient(name: "Молоко", amountPerServing: 100, unit: "мл"),
                Ingredient(name: "Соль", amountPerServing: 5, unit: "г")
            ],
            steps: [
                "Взбить яйца с молоком и солью.",
                "Вылить на сковороду и готовить 5 минут."
            ]
        ),
        Recipe(
            name: "Борщ",
            imageName: "borsch",
            calories: 300,
            time: 60,
            ingredients: [
                Ingredient(name: "Свекла", amountPerServing: 200, unit: "г"),
                Ingredient(name: "Капуста", amountPerServing: 150, unit: "г"),
                Ingredient(name: "Мясо", amountPerServing: 250, unit: "г")
            ],
            steps: [
                "Отварить мясо.",
                "Добавить овощи и варить до готовности."
            ]
        ),
        Recipe(
            name: "Салат",
            imageName: "salad",
            calories: 150,
            time: 15,
            ingredients: [
                Ingredient(name: "Огурец", amountPerServing: 100, unit: "г"),
                Ingredient(name: "Помидор", amountPerServing: 100, unit: "г"),
                Ingredient(name: "Листья салата", amountPerServing: 50, unit: "г")
            ],
            steps: [
                "Порезать овощи.",
                "Смешать с листьями салата и заправить."
            ]
        )
    ]
}


