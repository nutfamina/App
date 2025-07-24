//
//  RecipeData.swift
//  RecipeApp
//
//  Created by Азалия Хайруллина on 22.07.2025.
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
                Ingredient(name: "Лук", amountPerServing: 50, unit: "г"),
                Ingredient(name: "Кипяток", amountPerServing: 250, unit: "г"),
                Ingredient(name: "Соль", amountPerServing: 10, unit: "г"),
                Ingredient(name: "Молоко", amountPerServing: 120, unit: "г")
            ],
            steps: [
                "Замесить тесто: просеять муку, добавить соль и кипяток.",
                "Приготовить фарш из мяса и лука. Добавить столько воды или молока, чтобы фарш был не густым, но и не слишком жидким. Хорошенько перемешать. Фарш готов.",
                "Сформировать пельмени и варить 15 минут.",
                "Добавить кусочек сливочного масла. Домашние пельмени с мясом готовы. Подавать горячими со сметаной,со усом или уксусом. Приятного аппетита!"
            ]
        ),
        Recipe(
            name: "Омлет",
            imageName: "omlet",
            calories: 200,
            time: 10,
            ingredients: [
                Ingredient(name: "Яйца", amountPerServing: 5, unit: "шт"),
                Ingredient(name: "Молоко", amountPerServing: 100, unit: "мл"),
                Ingredient(name: "Мука", amountPerServing: 10, unit: "г"),
                Ingredient(name: "Соль", amountPerServing: 8, unit: "г"),
                Ingredient(name: "Масло", amountPerServing: 20, unit: "мл")
            ],
            steps: [
                "Взбить яйца с молоком, мукой и солью.",
                "Вылить на разогретую с маслом сковороду и готовить 10 минут.",
                "Наш классический омлет готов. Приятного аппетита!"
            ]
        ),
        Recipe(
            name: "Борщ",
            imageName: "borsch",
            calories: 300,
            time: 60,
            ingredients: [
                Ingredient(name: "Свекла", amountPerServing: 300, unit: "г"),
                Ingredient(name: "Капуста", amountPerServing: 500, unit: "г"),
                Ingredient(name: "Картофель", amountPerServing: 500, unit: "г"),
                Ingredient(name: "Морковь", amountPerServing: 300, unit: "г"),
                Ingredient(name: "Лук", amountPerServing: 2, unit: "шт"),
                Ingredient(name: "Томатная паста", amountPerServing: 30, unit: "г"),
                Ingredient(name: "Говядина", amountPerServing: 500, unit: "г"),
                Ingredient(name: "Зелень петрушки", amountPerServing: 1, unit: "шт"),
                Ingredient(name: "Вода", amountPerServing: 2000, unit: "мл"),
                Ingredient(name: "Масло растительное", amountPerServing: 30, unit: "г"),
                Ingredient(name: "Соль", amountPerServing: 15, unit: "г"),
            ],
            steps: [
                "Выкладываем мясо в кастрюлю, заливаем холодной водой. Доводим до кипения, снимаем пену и варим мясо 1,5 часа на маленьком огне, под крышкой.",
                "Картофель очищаем и нарезают крупными кусками.",
                "Нарезаем овощи соломкой",
                "Сковороду нагреваем, наливаем растительное масло. В горячее масло выкладываем лук и морковь, обжаривают овощи, помешивая, 3-4 минуты на среднем огне. Добавляем томатную пасту, перемешиваем и обжариваем овощи с томатом ещё 1 минуту.",
                "В мясной бульон добавляем картофель, свёклу, капусту, обжаренные лук и морковь и варим борщ до готовности картофеля, 20-25 минут.",
                "Моем и мелко нарезаем зелень.",
                "Подаем борщ со сметаной и зеленью. Приятного аппетита!"
                
            ]
        ),
        Recipe(
            name: "Салат",
            imageName: "salad",
            calories: 150,
            time: 15,
            ingredients: [
                Ingredient(name: "Огурец", amountPerServing: 2, unit: "шт"),
                Ingredient(name: "Помидор", amountPerServing: 3, unit: "шт"),
                Ingredient(name: "Лук красный", amountPerServing: 1, unit: "шт"),
                Ingredient(name: "Перец болгарский", amountPerServing: 2, unit: "шт"),
                Ingredient(name: "Сыр фета", amountPerServing: 200, unit: "г"),
                Ingredient(name: "Оливки", amountPerServing: 100, unit: "г"),
                Ingredient(name: "Листья салата", amountPerServing: 50, unit: "г")
            ],
            steps: [
                "Все овощи тщательно промойте проточной водой и нарежьте.",
                "Овощи поместите в салатницу, добавьте к ним маслины.",
                "Мягкий сыр нарежьте кубиками.",
                "Сверху добавьте кусочки феты, смешайте с листьям салата поперчите и немного сдобрите оливковым маслом.",
                "Греческий салат готов! Быстро, полезно и очень вкусно! Приятного аппетита!"
            ]
        )
    ]
}
