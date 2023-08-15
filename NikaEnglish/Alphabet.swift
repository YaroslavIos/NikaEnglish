//
//  Alphabet.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 3.8.2023.
//

import Foundation

struct Alphabet: Identifiable, Codable {
    let id: String
    let uppercaseLetter: String
    let lowercaseLetter: String
    let title: String
    let pronunciationOfTheLetterName: String
    let russianEntryOfTheLetterName: String
}
