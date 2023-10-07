//
//  WordSaveFormView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 29.7.2023.
//

import SwiftUI

struct WordSaveFormView: View {
    @Binding var words: [Words]
    @State private var russianWord = ""
    @State private var englishWord = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Form {
                Section {
                    TextField("Английское слово", text: $englishWord)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                Section {
                    TextField("Русское слово", text: $russianWord)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
            }
            
            Button(action: saveWord) {
                Text("Сохранить")
            }
            .padding(.top, 20)
            Spacer()
        }
    }
    
    func saveWord() {
        let newWord = Words(russianMeaning: russianWord, englishMeaning: englishWord)
        words.append(newWord)
        russianWord = ""
        englishWord = ""
        dismiss()
    }
}

//struct WordSaveFormView_Previews: PreviewProvider {
//    static var previews: some View {
//        WordSaveFormView()
//    }
//}
