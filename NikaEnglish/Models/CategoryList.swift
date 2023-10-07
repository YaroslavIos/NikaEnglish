//
//  CategoryList.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 22.7.2023.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let englishName: String
    let background: String
}

    let category = [
        Category(name: "Цвета", englishName: "Colors", background: "color_background"),
        Category(name: "Животные", englishName: "Animals", background: "animal_background"),
        Category(name: "Еда", englishName: "Eat", background: "food_background"),
        Category(name: "Покупки", englishName: "Shopping", background: "shopping_background"),
        Category(name: "Цифры", englishName: "Numbers", background: "numbers_background"),
        Category(name: "Дни недели", englishName: "Days", background: "")
    ]
