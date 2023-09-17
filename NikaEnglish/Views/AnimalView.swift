//
//  AnimalView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 16.7.2023.
//

import SwiftUI

let animals: [Animals] = Bundle.main.decode("Animals.json")

private let columns = [GridItem(.adaptive(minimum: 150, maximum: 200))]

struct AnimalView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 50) {
                ForEach(animals) { animal in
                    VStack {
                        Text(animal.englishName)
                            .font(.title)
                        Text(animal.name)
                            .font(.title2)
                        Image(animal.picture)
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 150, height: 150)
                    }
                }
            }
        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
