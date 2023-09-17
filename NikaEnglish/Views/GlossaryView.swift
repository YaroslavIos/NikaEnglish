//
//  GlossaryView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 18.7.2023.
//

import SwiftUI

struct GlossaryView: View {
    @State private var showingAlert = false
    @State private var russianWord = ""
    @State private var englishWord = ""
    @State private var words: [Words] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(words) {word in
                    NavigationLink(destination: WordView(word: word)) { Text(word.russianMeaning)
                    }
                }
            }
            .navigationBarTitle("Словарь")
            .toolbar() {
                Button(action: { self.showingAlert = true }) {
                    Image(systemName: "plus")
                        .font(.title2)
                        .padding(.all, 10)
                }
            }
            .alert("Добавить слово", isPresented: $showingAlert) {
                TextField("Введите английское слово", text: $englishWord)
                    .lineLimit(0)
                TextField("Введите русское слово", text: $russianWord)
                    .lineLimit(0)
                Button("OK", action: saveWord)
            } message: {
                Text("Введите новое слово")
            }
        }
    }
    func saveWord() {
        let newWord = Words(russianMeaning: russianWord, englishMeaning: englishWord)
        words.append(newWord)
        russianWord = ""
        englishWord = ""
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        GlossaryView()
    }
}
