//
//  DaysView.swift
//  NikaEnglish
//
//  Created by Ярослав Любиченко on 24.8.2023.
//

import SwiftUI

struct DaysView: View {
    let days: [Days] = Bundle.main.decode("Weeks.json")
    
    var body: some View {
        Form {
            ForEach(days) { day in
                Section(header: Text(day.id)) {
                    Text(day.day)
                    Text("Транскрипция: \(day.pronunciationEnglish)")
                    Text("Произношение: \(day.pronunciationRussian)")
                }
            }
        }
    }
}

struct DaysView_Previews: PreviewProvider {
    static var previews: some View {
        DaysView()
    }
}
