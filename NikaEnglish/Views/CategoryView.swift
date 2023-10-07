//
//  CategoryView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 22.7.2023.
//

import SwiftUI

struct CategoryView: View {
    var category: [Category] = []
    
    var body: some View {
        NavigationView {
            List(category) { categories in
                CategoryCell(categories: categories)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryView(category: category)
    }
}

struct CategoryCell: View {
    var categories: Category
    
    var body: some View {
        NavigationLink(destination: CategoryDetailsView(category: categories)) {
            Image(categories.background)
                .resizable()
                .frame(width: 90, height: 60)
                .cornerRadius(12)
            HStack {
                VStack(alignment: .leading) {
                    Text(categories.name)
                    Text(categories.englishName)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
        }
    }
}
