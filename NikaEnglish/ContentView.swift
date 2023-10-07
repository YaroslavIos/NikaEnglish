//
//  ContentView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 16.7.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CategoryView(category: category)
                .tabItem {
                    Label("Главная", systemImage: "list.star")
                }
            
            AlphabetView()
                .tabItem {
                    Label("Алфавит", systemImage: "character")
                }
            
            GlossaryView()
                .tabItem {
                    Label("Словарь", systemImage: "book.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
