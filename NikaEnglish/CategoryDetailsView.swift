//
//  CategoryDetailsView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 22.7.2023.
//

import SwiftUI

struct CategoryDetailsView: View {
    var category: Category
    
    var body: some View {
        VStack(spacing: 10) {
            if category.name == "Цвета" {
                ColorView()
            } else if category.name == "Животные" {
                AnimalView()
            } else if category.name == "Еда" {
                FoodView()
            } else if category.name == "Покупки" {
                ShoppingView()
            } else if category.name == "Цифры" {
                NumbersView()
            } else if category.name == "Дни недели" {
                DaysView()
            }
        }
        .navigationBarTitle(category.name)
    }
}

struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CategoryDetailsView(category: category[0])
        }
    }
}
