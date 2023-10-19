//
//  NumbersView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 7.8.2023.
//

import SwiftUI
import AVFoundation

struct NumbersView: View {
    let synthesizer = AVSpeechSynthesizer()
    let numbers: [Numbers] = Bundle.main.decode("Numbers.json")
    private let columns = [GridItem(.adaptive(minimum: 160, maximum: 180))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 50) {
                ForEach(numbers) { number in
                    VStack(spacing: 8) {
                        Text(number.id)
                            .font(.system(size: 56, weight: .light, design: .serif))
                        Text(number.number)
                            .font(.system(size: 26, weight: .light, design: .serif))
                        HStack {
                            Text(number.pronunciationOfTheNumber)
                                .font(.system(size: 22, weight: .light, design: .serif))
                            Text(number.russianEntryOfTheNumber)
                                .font(.system(size: 22, weight: .light, design: .serif))
                        }
                    }
                    .onTapGesture {
                        let utterance = AVSpeechUtterance(string: "\(number.number)")
                        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
                        synthesizer.speak(utterance)
                    }
                }
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
