//
//  AlphabetView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 27.7.2023.
//

import SwiftUI

struct AlphabetView: View {
    let alphabets: [Alphabet] = Bundle.main.decode("English.json")
    private let columns = [GridItem(.adaptive(minimum: 160, maximum: 180))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 50) {
                    ForEach(alphabets) { alphabet in
                        VStack(spacing: 8) {
                            Text(alphabet.uppercaseLetter)
                                .font(.system(size: 48, weight: .light, design: .serif))
                            HStack {
                                Text(alphabet.lowercaseLetter)
                                    .font(.system(size: 32, weight: .light, design: .rounded))
                                Text(alphabet.title)
                                    .font(.system(size: 32, weight: .light, design: .rounded))
                            }
                            HStack {
                                Text(alphabet.pronunciationOfTheLetterName)
                                    .font(.system(size: 24, weight: .light, design: .rounded))
                                Text(alphabet.russianEntryOfTheLetterName)
                                    .font(.system(size: 24, weight: .light, design: .rounded))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Алфавит")
        }
    }
    
    struct AlphabetView_Previews: PreviewProvider {
        static var previews: some View {
            AlphabetView()
        }
    }
}
