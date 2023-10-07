//
//  WordView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 29.7.2023.
//

import SwiftUI

struct WordView: View {
    @State private var name = ""
    var word: Words
    
    var body: some View {
        VStack(spacing: 20) {
            Text(word.russianMeaning)
                .font(.system(size: 34))
            Text(word.englishMeaning)
                .font(.system(size: 28))
        }
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView(word: Words(russianMeaning: "Hello", englishMeaning: "Hello"))
    }
}
