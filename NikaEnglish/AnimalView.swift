//
//  AnimalView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 16.7.2023.
//

import SwiftUI

let animals: [Animals] = Bundle.main.decode("Animals.json")
//let animals: [Animals] = [
//    Animals(name: "Собака", englishName: "Dog", picture: "dog"),
//    Animals(name: "Кошка", englishName: "Cat", picture: "cat"),
//    Animals(name: "Птица", englishName: "Bird", picture: "bird"),
//    Animals(name: "Пчела", englishName: "Bee", picture: "bee"),
//    Animals(name: "Муравей", englishName: "Ant", picture: "ant"),
//    Animals(name: "Утенок", englishName: "Duck", picture: "duck"),
//    Animals(name: "Слон", englishName: "Elephant", picture: "elephant"),
//    Animals(name: "Рыба", englishName: "Fish", picture: "fish"),
//    Animals(name: "Лягушка", englishName: "Frog", picture: "frog"),
//    Animals(name: "Коза", englishName: "goat", picture: "goat"),
//    Animals(name: "Гусь", englishName: "goose", picture: "goose"),
//    Animals(name: "Бегемот", englishName: "hippo", picture: "hippo"),
//    Animals(name: "Лошадь", englishName: "horse", picture: "horse"),
//    Animals(name: "Курица", englishName: "hen", picture: "hen")
//]

private let columns = [GridItem(.adaptive(minimum: 150, maximum: 200))]

struct AnimalView: View {
    var body: some View {
//        NavigationView {
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
//                    ForEach(animals) { animal in
//                        VStack {
//                            Text(animal.englishName)
//                                .font(.title)
//                            Text(animal.name)
//                                .font(.title2)
//                            Image(animal.picture)
//                                .resizable()
//                                .cornerRadius(16)
//                                .frame(width: 150, height: 150)
//                        }
//                    }
                }
            }
//        }
//        .padding()
//        Spacer()
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
